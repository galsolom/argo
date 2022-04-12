$metricBlock = @"
# HELP argocd_app_info Information about application.
# TYPE argocd_app_info gauge
argocd_app_info{dest_namespace="argo",dest_server="https://kubernetes.default.svc",health_status="Healthy",name="apps",namespace="argo",operation="",project="default",repo="https://github.com/galsolom/argo",sync_status="OutOfSync"} 1
argocd_app_info{dest_namespace="argo",dest_server="https://kubernetes.default.svc",health_status="Healthy",name="argocd",namespace="argo",operation="",project="default",repo="https://github.com/galsolom/argo",sync_status="Synced"} 1
argocd_app_info{dest_namespace="argo",dest_server="https://kubernetes.default.svc",health_status="Healthy",name="platform-apps",namespace="argo",operation="",project="default",repo="https://github.com/galsolom/argo",sync_status="Synced"} 1
argocd_app_info{dest_namespace="default",dest_server="https://kubernetes.default.svc",health_status="Healthy",name="helm-test",namespace="argo",operation="",project="default",repo="https://github.com/galsolom/argo",sync_status="Synced"} 1
argocd_app_info{dest_namespace="ingress-nginx",dest_server="https://kubernetes.default.svc",health_status="Healthy",name="ingress-nginx",namespace="argo",operation="",project="default",repo="https://github.com/galsolom/argo",sync_status="Synced"} 1
argocd_app_info{dest_namespace="metallb-system",dest_server="https://kubernetes.default.svc",health_status="Healthy",name="metallb",namespace="argo",operation="",project="default",repo="https://github.com/galsolom/argo",sync_status="Synced"} 1
argocd_app_info{dest_namespace="metrics",dest_server="https://kubernetes.default.svc",health_status="Healthy",name="metrics-server",namespace="argo",operation="",project="default",repo="https://github.com/galsolom/argo",sync_status="Synced"} 1
argocd_app_info{dest_namespace="services",dest_server="https://kubernetes.default.svc",health_status="Healthy",name="app",namespace="argo",operation="",project="default",repo="https://github.com/galsolom/argo",sync_status="Synced"} 1
# HELP argocd_app_k8s_request_total Number of kubernetes requests executed during application reconciliation.
# TYPE argocd_app_k8s_request_total counter
argocd_app_k8s_request_total{name="apps",namespace="argo",project="default",resource_kind="api",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Get"} 2
argocd_app_k8s_request_total{name="apps",namespace="argo",project="default",resource_kind="argoproj.io",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Get"} 2
argocd_app_k8s_request_total{name="apps",namespace="argo",project="default",resource_kind="namespaces",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Get"} 2
argocd_app_k8s_request_total{name="argocd",namespace="argo",project="default",resource_kind="api",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Get"} 2
argocd_app_k8s_request_total{name="argocd",namespace="argo",project="default",resource_kind="namespaces",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Get"} 1
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="api",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Get"} 66
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="apps",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Get"} 15
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="clusterrolebindings",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 1
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="clusterroles",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 1
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="configmaps",resource_namespace="default",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 4
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="deployments",resource_namespace="default",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 1
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="ingresses",resource_namespace="default",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 1
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="networking.k8s.io",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Get"} 5
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="rbac.authorization.k8s.io",resource_namespace="",response_code="200",server="https://10.96.0.1:443",verb="Get"} 20
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="rolebindings",resource_namespace="default",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 1
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="roles",resource_namespace="default",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 1
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="secrets",resource_namespace="default",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 3
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="serviceaccounts",resource_namespace="default",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 2
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="services",resource_namespace="default",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 4
argocd_app_k8s_request_total{name="helm-test",namespace="argo",project="default",resource_kind="statefulsets",resource_namespace="default",response_code="200",server="https://10.96.0.1:443",verb="Delete"} 2
# HELP argocd_app_reconcile Application reconciliation performance.
# TYPE argocd_app_reconcile histogram
argocd_app_reconcile_bucket{dest_server="https://kubernetes.default.svc",namespace="argo",le="0.25"} 257
argocd_app_reconcile_bucket{dest_server="https://kubernetes.default.svc",namespace="argo",le="0.5"} 269
argocd_app_reconcile_bucket{dest_server="https://kubernetes.default.svc",namespace="argo",le="1"} 271
argocd_app_reconcile_bucket{dest_server="https://kubernetes.default.svc",namespace="argo",le="2"} 272
argocd_app_reconcile_bucket{dest_server="https://kubernetes.default.svc",namespace="argo",le="4"} 273
argocd_app_reconcile_bucket{dest_server="https://kubernetes.default.svc",namespace="argo",le="8"} 273
argocd_app_reconcile_bucket{dest_server="https://kubernetes.default.svc",namespace="argo",le="16"} 274
argocd_app_reconcile_bucket{dest_server="https://kubernetes.default.svc",namespace="argo",le="+Inf"} 274
argocd_app_reconcile_sum{dest_server="https://kubernetes.default.svc",namespace="argo"} 28.65670480000001
argocd_app_reconcile_count{dest_server="https://kubernetes.default.svc",namespace="argo"} 274
# HELP argocd_app_sync_total Number of application syncs.
# TYPE argocd_app_sync_total counter
argocd_app_sync_total{dest_server="https://kubernetes.default.svc",name="apps",namespace="argo",phase="Succeeded",project="default"} 2
argocd_app_sync_total{dest_server="https://kubernetes.default.svc",name="argocd",namespace="argo",phase="Succeeded",project="default"} 1
argocd_app_sync_total{dest_server="https://kubernetes.default.svc",name="helm-test",namespace="argo",phase="Succeeded",project="default"} 5
# HELP argocd_cluster_api_resource_objects Number of k8s resource objects in the cache.
# TYPE argocd_cluster_api_resource_objects gauge
argocd_cluster_api_resource_objects{server="https://kubernetes.default.svc"} 569
# HELP argocd_cluster_api_resources Number of monitored kubernetes API resources.
# TYPE argocd_cluster_api_resources gauge
argocd_cluster_api_resources{server="https://kubernetes.default.svc"} 66
# HELP argocd_cluster_cache_age_seconds Cluster cache age in seconds.
# TYPE argocd_cluster_cache_age_seconds gauge
argocd_cluster_cache_age_seconds{server="https://kubernetes.default.svc"} 700
# HELP argocd_cluster_connection_status The k8s cluster current connection status.
# TYPE argocd_cluster_connection_status gauge
argocd_cluster_connection_status{k8s_version="1.22",server="https://kubernetes.default.svc"} 1
# HELP argocd_cluster_events_total Number of processes k8s resource events.
# TYPE argocd_cluster_events_total counter
argocd_cluster_events_total{group="",kind="ConfigMap",server="https://kubernetes.default.svc"} 112
argocd_cluster_events_total{group="",kind="Endpoints",server="https://kubernetes.default.svc"} 406
argocd_cluster_events_total{group="",kind="Node",server="https://kubernetes.default.svc"} 24
argocd_cluster_events_total{group="",kind="Pod",server="https://kubernetes.default.svc"} 67
argocd_cluster_events_total{group="",kind="Secret",server="https://kubernetes.default.svc"} 19
argocd_cluster_events_total{group="",kind="Service",server="https://kubernetes.default.svc"} 16
argocd_cluster_events_total{group="",kind="ServiceAccount",server="https://kubernetes.default.svc"} 10
argocd_cluster_events_total{group="apps",kind="ControllerRevision",server="https://kubernetes.default.svc"} 14
argocd_cluster_events_total{group="apps",kind="Deployment",server="https://kubernetes.default.svc"} 18
argocd_cluster_events_total{group="apps",kind="ReplicaSet",server="https://kubernetes.default.svc"} 20
argocd_cluster_events_total{group="apps",kind="StatefulSet",server="https://kubernetes.default.svc"} 28
argocd_cluster_events_total{group="argoproj.io",kind="Application",server="https://kubernetes.default.svc"} 128
argocd_cluster_events_total{group="discovery.k8s.io",kind="EndpointSlice",server="https://kubernetes.default.svc"} 66
argocd_cluster_events_total{group="networking.k8s.io",kind="Ingress",server="https://kubernetes.default.svc"} 5
argocd_cluster_events_total{group="rbac.authorization.k8s.io",kind="ClusterRole",server="https://kubernetes.default.svc"} 10
argocd_cluster_events_total{group="rbac.authorization.k8s.io",kind="ClusterRoleBinding",server="https://kubernetes.default.svc"} 10
argocd_cluster_events_total{group="rbac.authorization.k8s.io",kind="Role",server="https://kubernetes.default.svc"} 6
argocd_cluster_events_total{group="rbac.authorization.k8s.io",kind="RoleBinding",server="https://kubernetes.default.svc"} 6
# HELP argocd_cluster_info Information about cluster.
# TYPE argocd_cluster_info gauge
argocd_cluster_info{k8s_version="1.22",server="https://kubernetes.default.svc"} 1
# HELP argocd_kubectl_exec_pending Number of pending kubectl executions
# TYPE argocd_kubectl_exec_pending gauge
argocd_kubectl_exec_pending{command="apply",hostname="argocd-application-controller-6b878f7d9-276zw"} 0
argocd_kubectl_exec_pending{command="auth",hostname="argocd-application-controller-6b878f7d9-276zw"} 0
argocd_kubectl_exec_pending{command="replace",hostname="argocd-application-controller-6b878f7d9-276zw"} 0
# HELP argocd_kubectl_exec_total Number of kubectl executions
# TYPE argocd_kubectl_exec_total counter
argocd_kubectl_exec_total{command="apply",hostname="argocd-application-controller-6b878f7d9-276zw"} 92
argocd_kubectl_exec_total{command="auth",hostname="argocd-application-controller-6b878f7d9-276zw"} 24
argocd_kubectl_exec_total{command="replace",hostname="argocd-application-controller-6b878f7d9-276zw"} 8
# HELP argocd_redis_request_duration Redis requests duration.
# TYPE argocd_redis_request_duration histogram
argocd_redis_request_duration_bucket{hostname="argocd-application-controller-6b878f7d9-276zw",initiator="argocd-application-controller",le="0.01"} 785
argocd_redis_request_duration_bucket{hostname="argocd-application-controller-6b878f7d9-276zw",initiator="argocd-application-controller",le="0.05"} 793
argocd_redis_request_duration_bucket{hostname="argocd-application-controller-6b878f7d9-276zw",initiator="argocd-application-controller",le="0.1"} 793
argocd_redis_request_duration_bucket{hostname="argocd-application-controller-6b878f7d9-276zw",initiator="argocd-application-controller",le="0.25"} 793
argocd_redis_request_duration_bucket{hostname="argocd-application-controller-6b878f7d9-276zw",initiator="argocd-application-controller",le="0.5"} 793
argocd_redis_request_duration_bucket{hostname="argocd-application-controller-6b878f7d9-276zw",initiator="argocd-application-controller",le="1"} 793
argocd_redis_request_duration_bucket{hostname="argocd-application-controller-6b878f7d9-276zw",initiator="argocd-application-controller",le="+Inf"} 793
argocd_redis_request_duration_sum{hostname="argocd-application-controller-6b878f7d9-276zw",initiator="argocd-application-controller"} 0.5975751999999994
argocd_redis_request_duration_count{hostname="argocd-application-controller-6b878f7d9-276zw",initiator="argocd-application-controller"} 793
# HELP argocd_redis_request_total Number of redis requests executed during application reconciliation.
# TYPE argocd_redis_request_total counter
argocd_redis_request_total{failed="false",hostname="argocd-application-controller-6b878f7d9-276zw",initiator="argocd-application-controller"} 793
# HELP go_gc_duration_seconds A summary of the pause duration of garbage collection cycles.
# TYPE go_gc_duration_seconds summary
go_gc_duration_seconds{quantile="0"} 4.35e-05
go_gc_duration_seconds{quantile="0.25"} 8.09e-05
go_gc_duration_seconds{quantile="0.5"} 0.0001179
go_gc_duration_seconds{quantile="0.75"} 0.0002132
go_gc_duration_seconds{quantile="1"} 0.0225567
go_gc_duration_seconds_sum 0.0801925
go_gc_duration_seconds_count 132
# HELP go_goroutines Number of goroutines that currently exist.
# TYPE go_goroutines gauge
go_goroutines 570
# HELP go_info Information about the Go environment.
# TYPE go_info gauge
go_info{version="go1.16.11"} 1
# HELP go_memstats_alloc_bytes Number of bytes allocated and still in use.
# TYPE go_memstats_alloc_bytes gauge
go_memstats_alloc_bytes 5.487456e+07
# HELP go_memstats_alloc_bytes_total Total number of bytes allocated, even if freed.
# TYPE go_memstats_alloc_bytes_total counter
go_memstats_alloc_bytes_total 3.699807688e+09
# HELP go_memstats_buck_hash_sys_bytes Number of bytes used by the profiling bucket hash table.
# TYPE go_memstats_buck_hash_sys_bytes gauge
go_memstats_buck_hash_sys_bytes 2.647656e+06
# HELP go_memstats_frees_total Total number of frees.
# TYPE go_memstats_frees_total counter
go_memstats_frees_total 2.4956405e+07
# HELP go_memstats_gc_cpu_fraction The fraction of this program's available CPU time used by the GC since the program started.
# TYPE go_memstats_gc_cpu_fraction gauge
go_memstats_gc_cpu_fraction 0.0008900077253618414
# HELP go_memstats_gc_sys_bytes Number of bytes used for garbage collection system metadata.
# TYPE go_memstats_gc_sys_bytes gauge
go_memstats_gc_sys_bytes 1.1485648e+07
# HELP go_memstats_heap_alloc_bytes Number of heap bytes allocated and still in use.
# TYPE go_memstats_heap_alloc_bytes gauge
go_memstats_heap_alloc_bytes 5.487456e+07
# HELP go_memstats_heap_idle_bytes Number of heap bytes waiting to be used.
# TYPE go_memstats_heap_idle_bytes gauge
go_memstats_heap_idle_bytes 1.32964352e+08
# HELP go_memstats_heap_inuse_bytes Number of heap bytes that are in use.
# TYPE go_memstats_heap_inuse_bytes gauge
go_memstats_heap_inuse_bytes 6.5019904e+07
# HELP go_memstats_heap_objects Number of allocated objects.
# TYPE go_memstats_heap_objects gauge
go_memstats_heap_objects 365408
# HELP go_memstats_heap_released_bytes Number of heap bytes released to OS.
# TYPE go_memstats_heap_released_bytes gauge
go_memstats_heap_released_bytes 1.31129344e+08
# HELP go_memstats_heap_sys_bytes Number of heap bytes obtained from system.
# TYPE go_memstats_heap_sys_bytes gauge
go_memstats_heap_sys_bytes 1.97984256e+08
# HELP go_memstats_last_gc_time_seconds Number of seconds since 1970 of last garbage collection.
# TYPE go_memstats_last_gc_time_seconds gauge
go_memstats_last_gc_time_seconds 1.6497476377868521e+09
# HELP go_memstats_lookups_total Total number of pointer lookups.
# TYPE go_memstats_lookups_total counter
go_memstats_lookups_total 0
# HELP go_memstats_mallocs_total Total number of mallocs.
# TYPE go_memstats_mallocs_total counter
go_memstats_mallocs_total 2.5321813e+07
# HELP go_memstats_mcache_inuse_bytes Number of bytes in use by mcache structures.
# TYPE go_memstats_mcache_inuse_bytes gauge
go_memstats_mcache_inuse_bytes 6000
# HELP go_memstats_mcache_sys_bytes Number of bytes used for mcache structures obtained from system.
# TYPE go_memstats_mcache_sys_bytes gauge
go_memstats_mcache_sys_bytes 16384
# HELP go_memstats_mspan_inuse_bytes Number of bytes in use by mspan structures.
# TYPE go_memstats_mspan_inuse_bytes gauge
go_memstats_mspan_inuse_bytes 697544
# HELP go_memstats_mspan_sys_bytes Number of bytes used for mspan structures obtained from system.
# TYPE go_memstats_mspan_sys_bytes gauge
go_memstats_mspan_sys_bytes 1.261568e+06
# HELP go_memstats_next_gc_bytes Number of heap bytes when next garbage collection will take place.
# TYPE go_memstats_next_gc_bytes gauge
go_memstats_next_gc_bytes 5.8883808e+07
# HELP go_memstats_other_sys_bytes Number of bytes used for other system allocations.
# TYPE go_memstats_other_sys_bytes gauge
go_memstats_other_sys_bytes 898032
# HELP go_memstats_stack_inuse_bytes Number of bytes in use by the stack allocator.
# TYPE go_memstats_stack_inuse_bytes gauge
go_memstats_stack_inuse_bytes 3.342336e+06
# HELP go_memstats_stack_sys_bytes Number of bytes obtained from system for stack allocator.
# TYPE go_memstats_stack_sys_bytes gauge
go_memstats_stack_sys_bytes 3.342336e+06
# HELP go_memstats_sys_bytes Number of bytes obtained from system.
# TYPE go_memstats_sys_bytes gauge
go_memstats_sys_bytes 2.1763588e+08
# HELP go_threads Number of OS threads created.
# TYPE go_threads gauge
go_threads 11
# HELP process_cpu_seconds_total Total user and system CPU time spent in seconds.
# TYPE process_cpu_seconds_total counter
process_cpu_seconds_total 19.54
# HELP process_max_fds Maximum number of open file descriptors.
# TYPE process_max_fds gauge
process_max_fds 1.048576e+06
# HELP process_open_fds Number of open file descriptors.
# TYPE process_open_fds gauge
process_open_fds 14
# HELP process_resident_memory_bytes Resident memory size in bytes.
# TYPE process_resident_memory_bytes gauge
process_resident_memory_bytes 1.40959744e+08
# HELP process_start_time_seconds Start time of the process since unix epoch in seconds.
# TYPE process_start_time_seconds gauge
process_start_time_seconds 1.64974703559e+09
# HELP process_virtual_memory_bytes Virtual memory size in bytes.
# TYPE process_virtual_memory_bytes gauge
process_virtual_memory_bytes 9.49489664e+08
# HELP process_virtual_memory_max_bytes Maximum amount of virtual memory available in bytes.
# TYPE process_virtual_memory_max_bytes gauge
process_virtual_memory_max_bytes 1.8446744073709552e+19
"@
$metricBlock = $metricBlock.Split("`r`n")
$metricList = @()
$metricList =[System.Collections.ArrayList]$metricList

$hash = @{}
$metricBlock = $metricBlock| ?{$_ -notlike "#*" -and $_.Length -gt 0} 
foreach($line in $metricBlock){
    $metadata = New-Object -TypeName psobject
    $metricValue = $line.split(" ")[-1]
    
    if($line -like "*{*"){
        $metricName = $line.Split("{")[0]
        $metadata | add-member -MemberType NoteProperty -name metric -Value $metricName
        $metricContent = $line.split("{")[1].Remove($line.split("{")[1].LastIndexOf("}"))
        $metricContent = $metricContent.Replace("`"","")
        $metricContent.Split(",")| %{
            $kv = $_.Split("=")
            $metadata | add-member -MemberType NoteProperty -name $kv[0] -Value $kv[1]
        }
    }
    else{
        $metricName = $line.split(" ")[0]
        $metadata | add-member -MemberType NoteProperty -name metric -Value $metricName
    }
    $metadata | add-member -MemberType NoteProperty -name metricValue -Value $metricValue
    $metricList.Add($metadata)
}
$scb = $metricList| ogv -PassThru  # search/menu
$csv = @("csv","table") | ogv -PassThru
if($csv -eq "csv"){
    $scb |ConvertTo-Csv| scb #csv
}else{
    $scb | ft | Out-String | scb # table
}




