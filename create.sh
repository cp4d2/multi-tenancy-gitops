oc apply -f ./setup/ocp47/argocd-instance/ -n openshift-gitops
while ! oc wait pod --timeout=-1s --for=condition=ContainersReady -l app.kubernetes.io/name=openshift-gitops-cntk-server -n openshift-gitops > /dev/null; do sleep 30; done
