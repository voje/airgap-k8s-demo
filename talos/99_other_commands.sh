skopeo copy docker://docker.io/voje/toolbox:0.0.9 docker://localhost:6000/voje/toolbox:0.0.9 --dest-tls-verify=false
kubectl debug -n kube-system node/demo-node0 --image=voje/toolbox:0.0.9
kubectl debug -n kube-system node/demo-node0 --image=voje/toolbox:0.0.9 -- sleep inf
