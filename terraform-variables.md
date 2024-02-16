### How to use strings 

```
variable "vpcname" {
    type = string
    default = "myvpc"
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = var.vpcname
    }
}
```


### How to use Lists

```
variable "mylist" {
    type = list(string)
    default = [ "value1", "value2" ]
  
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = var.mylist[1]
    }
  
}
```
This means that to access the first element of the list, you would use index [0], and to access the second element, you would use index [1].
Code uses [1] to access the second element.

### How to use maps

```
variable "mymap" {
    type = map(string)
    default = {
        key1 = "value1"
        key2 = "value2"

    }
  
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = var.mymap["key2"]
    }
  
}
```


### How to use Input Variables
Setting input variables is really easy and what it does is it gives a chance for you and the user to manually set a variable when we run TerraForm plan.

```
variable "inputname"{
    type = string
    description = "set the name of the vpc"

}


resource "aws_vpc" "myvpc3" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = var.inputname
    }
  
}

```
