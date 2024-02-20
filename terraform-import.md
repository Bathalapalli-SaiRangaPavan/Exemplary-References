### Importing an EC2 Instance:

- Create an EC2 instance named import-server (or any name) manually in AWS.
- In your Terraform code, create a resource block for the EC2 instance using aws_instance.
- Run the terraform import command to import the existing EC2 instance into your Terraform state.

```
resource "aws_instance" "import-server" {
    ami           = "ami-0e731c8a588258d0d"
    instance_type = "t2.micro"
}
```

Run 
```
terraform import aws_instance.import-server <instance_id_from_aws>
```

- After importing, apply the changes using terraform apply -auto-approve to ensure Terraform reflects the current state of your infrastructure.
- Optionally, you can destroy the imported resources using terraform destroy -auto-approve when they are no longer needed.

##### Note - Ensure that values such as ami, instance_type match the existing resources in AWS, and replace <instance_id_from_aws> with the actual IDs retrieved from AWS.
