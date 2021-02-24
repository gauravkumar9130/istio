svcip=`kubectl get svc | grep nginx-svc | awk '{print $3}'`
while true;do curl -s $svcip | grep title; sleep 0.5; done
