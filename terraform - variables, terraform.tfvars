# variables.tf 
variable "region" {
    type = string
  
}

variable "cidr_block" {
    
}

variable "private_subnet_cidr_block" {

}

variable "private_subnet_availability_zone" {
  
}

variable "tag_name" {
  
}

variable "public_subnet_cidr_block" {
  
}

variable "public_subnet_availability_zone" {
  
}

variable "private_routename" {

}

variable "public_routename" {
  
}

variable "destination_cidr_block" {
  
}



# terraform.tfvars 
region = "us-east-1"
cidr_block = "192.168.0.0/16"
private_subnet_cidr_block = "192.168.1.0/24"
private_subnet_availability_zone = "us-east-1a"
tag_name = "webserver"
public_subnet_cidr_block = "192.168.2.0/24"
public_subnet_availability_zone = "us-east-1b"
private_routename = "private route webserver"
public_routename = "public route table"
destination_cidr_block = "0.0.0.0/0"
