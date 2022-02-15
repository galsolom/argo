[CmdletBinding()]
param (
        [Parameter(Mandatory=$True)]
        [string]$repository,
        [Parameter(Mandatory=$True)]
        [string]$localNaming = "myname"
)
$files = gci argo -recurse -filter *.example.yaml | ?{(gc $_.fullname) -like "*$item*"}

$replacers = @{}
$replacers['https://github.com/galsolom/argo']=$repository
$replacers['gals']=$localNaming

$files | %{

    $contents =  gc $_.FullName -Raw
    foreach($replace in $replacers.Keys){
        $contents = $contents -replace $replace,$replacers[$replace]
    }
    $newFileName = $_.FullName -replace '.example',''
    $contents | Out-File -Encoding UTF8 -Force -FilePath $newFileName
}

