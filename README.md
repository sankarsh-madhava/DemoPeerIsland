# DemoPeerIsland

setup steps, assumptions, and design decisions.

SET UP STEPS

1. create the required infra for the set up - resource group, azure container registry, azure kubernetes service, vnet, storage account

2. define the application solution, from the defined solution create a docker file

3. Build and Push the docker image to the azure container registry.

4. pull the docker image from the azure container registry manifest and then deploy on to the azure kubernetes services.

5. To deploy the application on to the AKS using Helm package manager for kubernetes.

6. In Helm, first create the chart tthe package that contains required values.yaml, chart.yaml and other template files required for deployment.

7. Then deploy application on the helm.

8. Set up the monitoring using Prometheus and Grafana to debug the AKS workloads.


Terraform CICD STEPS.

1. Install terraform required version on agent.
2. Terraform initialization step (terraform init)
3. Terraform Plan stage
4. Manual validation to validate the plan.
5. Terraform Apply to provision the resources on to the azure cloud.


Assumptions.

1. Considering we already have a subscription provided.
2. we already have the service principle.
3. we have the service connection available for infra, docker, kubernetes pipelines


Design Desisions considered for prod

1. enabling auto scaling for the aks.
2. using the standard SKUs
3. provising setup with in a vnet.
4. we need to implement a firewall and a application gateway to restrict the traffic to applicaion.