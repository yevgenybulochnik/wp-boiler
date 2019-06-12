

resource "aws_instance" "instance" {
    ami = "${data.aws_ami.ubuntu.id}"
    instance_type = var.instance-type
    key_name = var.key-name
    vpc_security_group_ids = [
        "${aws_security_group.instance_sg.id}"
    ]

    tags = {
        name = "wordpress"
    }
}
