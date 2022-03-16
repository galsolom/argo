# some argo generic ecosystem with self managed argocd server on docker-desktop
## before starting, change/edit the following:
fork this repo and run the powershell script, it'll simply create new value files with your repo and some generic name for the tls secrets and the domain (e.g argocd.gals.local)
```powershell
example:
.\fixer.ps1 -repository "https://github.com/galsolom/argo" -localNaming "gals" -branch main
# your forked repo..
.\fixer.ps1 -repository "https://github.com/<your-repository>/argo" -localNaming "happyhippo" -branch main
```

* all tls secrets are now named happyhippo-local-tls
* all ingresses point to  *.happyhippo.local domain. (argocd.happyhippo.local, argoworkflows.happyhippo.local etc.)
## installation
verify kuberentes context and connection
```
kubectl config current-context

# output
# docker-desktop

kubectl get ns

# output
# NAME              STATUS   AGE
# kube-node-lease   Active   1d2h
# kube-public       Active   1d2h
# kube-system       Active   1d2h
# default           Active   1d2h
```


create certificate
cmd as admin on windows:
```cmd
choco install mkcert
```
in root dir:
```
mkcert *.gals.local
# or your name.. e.g: mkcert *.happyhippo.local
# creating the tls secret using the cert above
kubectl create ns argo
kubectl create secret tls gals-local-tls --key  _wildcard.gals.local-key.pem --cert _wildcard.gals.local.pem -n argo
# the tls secret name must match the ones under the ingress secret name.
# kubectl create secret tls happyhippo-local-tls --key  _wildcard.happyhippo.local-key.pem --cert _wildcard.happyhippo.local.pem -n argo
```
install argocd (this installs the chart in the directory, by default it'll grab values.yaml):
argo will eventually will manage itself,
```
helm install argocd -n argo .\argo\argocd
```
sync root app

```powershell
# get initial password
$argocdpass = kubectl -n argo get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | %{[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($_))}
# get argocd server pod
$argocdpodname = kubectl get pods -n argo -l app.kubernetes.io/name=argocd-server | ?{$_ -like "*argocd-server*"} | %{$_.split()[0]} 

# login
kubectl exec -it $argocdpodname -n argo -- argocd login --insecure --grpc-web argocd-server  --username admin --password $argocdPass --plaintext
# first sync sometimes takes few seconds to return a response, wait few seconds and re-run below command..
kubectl exec -it $argocdpodname -n argo -- argocd app sync apps
```


add all ingress entries under hosts file
```
# if using gitbash/linux shell, replace " with ' and vice versa

kubectl get ing -n argo -o=jsonpath="{range .items[*]}{.spec.rules[*].host}{'\n'}{end}"

# output
argocd.gals.local
argoworkflows.gals.local
```

add the aliases and save (**as admin! notepad, notepad++,etc**), for example:
windows path:
```
C:\Windows\System32\drivers\etc\hosts

127.0.0.240 argocd.gals.local argoworkflows.gals.local grafana.gals.local
```
verify argocd login is accessible
browse to
```
https://argocd.gals.local
```
Username: admin

Password:
```powershell
$argocdpass | scb # for the ui..
# OR
kubectl -n argo get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | %{[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($_))} | scb
```


> if the page is hanging try to stop the iphelper service, 2 process fighting for 0.0.0.0:443 LISTEN.
 powershell as admin
 ```powershell
 restart-service iphlpsvc -force
 # this service seems to do a lot of issues for wsl2\windows,
 # after a few mins of work the (webpage hang) issue seems to return so once i can access the ui from the browser, I stop the service
 stop-service iphlpsvc -force
 ```

 


root app should already installed (apps)
verify:
```
kubectl get applications -A
# output
NAMESPACE   NAME            SYNC STATUS   HEALTH STATUS
argo        apps            Synced        Healthy      
argo        argocd          Synced        Healthy      
argo        argoworkflows   Synced        Healthy      
argo        ingress-nginx   Synced        Healthy      
argo        metallb         Synced        Healthy 
```

## work in progress..
below steps are for manual adding the root application
in argocd add manually the root app, it'll include argocd itself:

create application in argo namespace with the galsolom/argo.git repo, point to
branch main with path: 
```
argo/apps
```
and under Helm section, submit
```
values.yaml
```

(important to hit 'Enter' in the UI, otherwise the input will not be submitted.)

linux/gitbash get argocd login
```
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

```

powershell get argo-workflows login
```
kubectl get pods -n argo | ?{$_ -like "*workflows-server*"} | %{$_.split()[0]} | %{kubectl exec $_ -n argo -- argo auth token} | scb
```


## testing some workflow builds


create docker-registry secret for kaniko:
linux/gitbash
```
echo -n user:pass | base64
```
replace xxx with the encoded credentials
```
{
	"auths": {
		"https://index.docker.io/v1/": {
			"auth": "xxxxxxxxxxxxxxx"
		}
	}
}
```
create the secret
mount it under /kaniko/.docker in the pod spec
```
kubectl create secret generic kaniko-docker-secret --from-file=config.json -n argo
```