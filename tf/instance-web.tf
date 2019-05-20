

resource "aws_instance" "wordpress" {
    ami = "${data.aws_ami.ubuntu.id}"
    instance_type = "t2.micro"
    key_name = "wp-key"
    vpc_security_group_ids = [
        "${aws_security_group.wordpress.id}"
    ]

    tags {
        name = "wordpress"
    }

    provisioner "local-exec" {
        command = "echo ${aws_instance.wordpress.public_ip} > public_ips.txt"
    }
}

output "image_id" {
    value = "${data.aws_ami.ubuntu.id}"
}