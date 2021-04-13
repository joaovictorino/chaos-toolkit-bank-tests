curl -sSL https://mirrors.chaos-mesh.org/v1.1.2/install.sh | bash

# access dashboard
kubectl port-forward -n chaos-testing svc/chaos-dashboard 2333:2333