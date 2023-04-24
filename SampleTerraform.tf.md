### Launch an EC2 instance using Terraform Script 

```
provider "aws"{
    region = "us-east-1"
    access_key = "AKIA5KT2FRCBB2WZAAH4"
    secret_key = "XrhgRBm5zvf+RCfTqplivCSvuR9fuURY3tUsnY"
}

resource "aws_instance" "ec2instance"{
    ami = "ami-016eb5d644c333ccb"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-3"]
    key_name = "terraformpractise"
    tags = {
        Name = "RedHat Server by Terraform"
    }
}
```

#### Execute below commands 


- terraform init  
###### It creates ```.terraform``` directory
- terraform validate 
###### It says weather configuration file is ```Success or Failed```
- terraform plan 
###### It is like a dry run
- terraform apply -auto-approve
###### To create an ```RedHat Server by Terraform``` ec2 instance

- terraform destroy 
###### To delete ```RedHat Server by Terraform``` ec2 instance
