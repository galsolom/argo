[CmdletBinding()]
param (
        [Parameter(Mandatory=$True)]
        [string]$repository,
        [Parameter(Mandatory=$True)]
        [string]$branch = "main",
        [Parameter(Mandatory=$True)]
        [string]$localNaming = "myname"
)
$files = gci argo -recurse -filter *.example.yaml
$replacers = @{}
#repository,hostnames & tls secrets
$replacers['https://github.com/galsolom/argo']=$repository
$replacers['.gals.local']=".$localNaming.local"
$replacers['gals-local']="$localNaming-local"
$replacers['targetRevision: main']="targetRevision: $branch"

$files | %{

    $contents =  gc $_.FullName -Raw
    foreach($replace in $replacers.Keys){
        $contents = $contents.replace($replace,$replacers[$replace])
    }
    $newFileName = $_.FullName -replace '.example',''
    $contents | Out-File -Encoding UTF8 -Force -FilePath $newFileName
}

