

data "template_file" "ansible_inventory" {
    template = "${file("${path.module}/templates/hosts.tpl")}"
    vars = {
        instance_ip = aws_instance.instance.public_ip
    }
}

resource "local_file" "hosts" {
    content = "${data.template_file.ansible_inventory.rendered}"
    filename = "../ansible/hosts"
}
