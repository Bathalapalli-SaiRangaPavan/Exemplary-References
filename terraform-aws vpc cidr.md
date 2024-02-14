# AWS VPC (cidr) Creation with Terraform


```
provider "aws" {
    region = "us-east-1"
    access_key = "<give access key>"
    secret_key = "<give secret key>"
    
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
}


variable "inputname" {
    type = string 
    description = "Set a name to vpc"
}


output "vpcid" {
    value = aws_vpc.myvpc.id
} 
```
- Initialize Terraform with ```terraform init```
- Apply the configuration with ```terraform apply```
- When prompted, provide a name for the VPC.
- Upon successful application, the output will display the ID of the created VPC.
