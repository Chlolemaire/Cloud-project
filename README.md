# Cloud-project

ANSIBLE PART

Ansible file: dev.yml

To execute the ansible file dev.yml do :

ansible-playbook dev.yml -i hosts -u host1.example.org-K


TERRAFORM PART

Terraform file: main.tf vars.tf

Create variables.tfvars, and put the value of your variables inside:

scw_token="X"

organization="X"

Run

terraform init

then terraform plan -var-file="variables.tfvars"

then terraform apply -var-file="variables.tfvars"

And terraform destroy -var-file="variables.tfvars"


PACKER PART

Packer file: pack.json

For the config:
  
  In the .bashrc file write : export SCW_TOKEN=<your_token> and export SCALEWAY_ORGANIZATION=<your_organization_id>
  
  Run packer build pack.json
