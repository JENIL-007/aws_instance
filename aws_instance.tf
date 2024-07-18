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