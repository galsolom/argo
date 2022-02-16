

alert manager config..
https://github.com/prometheus-community/helm-charts/issues/355#issuecomment-945102598
secret must be from file alertmanager.yaml AND
it's name must be alertmanager-nameOverride-alertmanager
from values.yaml
```yaml
kube-prometheus-stack:
  nameOverride: "kps"
```

to enable it:
```yaml
    alertmanagerSpec:
      useExistingSecret: true
```

example alertmanager.yaml:
```yaml
global:
  resolve_timeout: 1m
  slack_api_url: 'https://hooks.slack.com/services/<replace>/<with>/<your-url>'
route:
  receiver: 'slack-notifications'
  group_wait: 30s
  group_interval: 10m
  repeat_interval: 30m
receivers:
- name: 'slack-notifications'
  slack_configs:
  - channel: '#alert-tests'
    send_resolved: true
```


replace 'kps' with the kube-prometheus-stack name override you provided under values.yaml
```
kubectl create secret generic alertmanager-kps-alertmanager --from-file .\alertmanager.yaml -n prometheus
```