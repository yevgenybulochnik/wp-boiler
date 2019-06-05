

data "template_file" "wp_inventory" {
    template = "${file("./hosts.tpl")}"
    vars = {
        wp_ip = aws_instance.wordpress.public_ip
    }
}

resource "local_file" "wp_inventory" {
    content = "${data.template_file.wp_inventory.rendered}"
    filename = "../ansible/hosts"
}
