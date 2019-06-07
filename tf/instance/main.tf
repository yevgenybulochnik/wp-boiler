

resource "aws_instance" "wordpress" {
    ami = "${data.aws_ami.ubuntu.id}"
    instance_type = var.instance-type
    key_name = "wp-key"
    vpc_security_group_ids = [
        "${aws_security_group.wordpress.id}"
    ]

    tags = {
        name = "wordpress"
    }
}
