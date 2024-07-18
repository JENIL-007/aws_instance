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

resource "aws_subnet" "first-vpc-sub" {
    vpc_id = aws_vpc.first-vpc.vpc_id
    cidr_black = "10.0.1.0/24"
    tags = {
        name = "vpc1-sub"
    }
}

resource "aws_vpc" "second-vpc" {
    cidr_block = "10.1.0.0/16"
    tags = {
        name = "vpc2"
    }
}

resource "aws_subnet" "second-vpc-sub" {
    vpc_id = aws_vpc.first-vpc.vpc_id
    cidr_black = "10.1.1.0/24"
    tags = {
        name = "vpc2-sub"
    }
}