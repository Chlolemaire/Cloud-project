# Cloud-project


_**Installation of Wordpress with ansible**_


### **ANSIBLE PART**


**Ansible file:** _dev.yml_

To execute dev.yml do : 
```
ansible-playbook dev.yml -i hosts -u host1.example.org -K
```
In the file _main.yml_ at _/project_cloud/roles/mysqldefault_ choose a password for your database after:

```wp_mysql_password:``` 

### **TERRAFORM PART**

**Terraform file:**  _main.tf_ _variables.tf_
- create _variables.tfvars_, and put the value of your variables inside:
```
scw_token="X"

organization="X"
```
- Run 

```terraform init``` 

then ```terraform plan -var-file="variables.tfvars"```

then ```terraform apply -var-file="variables.tfvars"```

then ```terraform destroy -var-file="variables.tfvars"```

### **PACKER PART**

**Packer file:** _pack.json_

my config:


- In the _.bashrc_ file write :

```
export SCW_TOKEN=<your_token> 

export SCALEWAY_ORGANIZATION=<your_organization_id>

```

- Run ```packer build  pack.json```
