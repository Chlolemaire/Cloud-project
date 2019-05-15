# Cloud-project


_**Wordpress project with ansible**_


### **ANSIBLE PART**


**Ansible file:** _dev.yml_

The command used to execute dev.yml is : 
```
ansible-playbook dev.yml -i hosts -u host1.example.org -K
```

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


- In the _.bashrc_ file write : ```export SCW_TOKEN=<your_token>``` and ```export SCALEWAY_ORGANIZATION=<your_organization_id>```

- Run ```packer build  pack.json```
