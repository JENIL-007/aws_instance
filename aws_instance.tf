provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}


resource "aws_instance" "first-server" {
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.micro"

    tags = {
        name = "ubuntu_server"
    }
}
# resourse "<provider>_<resourceType>" "name" {
#     config options...
#     key = key_value
#     key2 = value
# }

resource "aws_vpc" "first-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        name = "vpc1"
    }
}
