## How to use Chaos Toolkit with Kubernetes

The application is already up on kubernetes, link to the repository

https://github.com/joaovictorino/terraform-aks-spring

Install Chaos Toolkit and Kubernetes Plugin
````sh
sudo pip install chaostoolkit
pip install chaostoolkit-kubernetes
````

Running the experiments
````sh
chaos run experiment-db.json 
chaos run experiment-app.json 
````