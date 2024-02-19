```
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAS47ML2SGM6ZMBJHT"
  secret_key = "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"
}

resource "aws_vpc" "myvpc1" {
  cidr_block = "10.0.0.1/16"

}

resource "aws_vpc" "myvpc2" {
  cidr_block = "10.0.0.1/16"
```


## Tainting a Resource
To taint a resource in Terraform, follow these steps:

- Identify the Resource: Determine which resource you want to taint.
- Use Terraform Command: Execute the terraform taint command followed by the resource identifier.
- For example: ```terraform taint <resource_type>.<resource_name>```

```
terraform taint aws_vpc.myvpc2
```

Terraform provides the ability to mark resources as "tainted" or "corrupted", indicating that they should be recreated during the next terraform apply operation. Tainting is useful in scenarios where you need to force recreation of specific resources due to configuration changes or failures.


## Untainting a Resource
If you want to revert the taint on a resource, you can untaint it using the following steps:

- Identify the Tainted Resource: Determine which tainted resource you want to untaint.
- Use Terraform Command: Execute the terraform untaint command followed by the resource identifier. For example: ```terraform untaint <resource_type>.<resource_name>```
```
terraform untaint aws_vpc.myvpc2
```
