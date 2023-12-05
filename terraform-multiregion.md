### Create a file named main.tf and write the Terraform configuration code inside it.
```
provider "aws"{
  alias = "us-north-region"
  region = "us-east-1"
}

provider "aws"{
  alias = "ap-south-region"
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami = "ami-02a2af70a66af6dfb"
  instance_type = "t2.micro"
  provider = "aws.ap-south-region"
  
}

resource "aws_instance" "example2" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  provider = "aws.us-north-region"
  
}
```
### Execute below commands 
##### To initialize 
```
terraform init
```
##### To Preview
```
terraform plan
```
##### To Create
```
terraform apply
```
- Please verify whether instances have been created by checking in the US East (N. Virginia) and Asia Pacific (Mumbai) regions
##### To Destroy
```
terraform destroy
```


