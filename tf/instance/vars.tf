
data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name = "name"
        values =["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"]

}

data "http" "myip" {
    url = "https://api.ipify.org"
}

variable "instance-type" {
    default = "t2.micro"
}

variable "ssh-ip" {
    default = [""]
}

variable "key-name" {
    default = "key"
}
