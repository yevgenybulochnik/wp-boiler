

provider "aws" {
    profile = "default"
    region = "us-west-2"
}


resource "aws_instance" "example" {
    ami = "ami-0e32ec5bc225539f5"
    instance_type = "t2.micro"
    key_name = "wp-key"
}
