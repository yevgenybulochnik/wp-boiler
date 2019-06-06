

resource "aws_route53_zone" "primary" {
    count = var.setup_zone ? 1 : 0
    name = "${var.domain_name}"

    provisioner "local-exec" {
        command = "./r53domain.py ${var.provision_r53domain} ${var.domain_name} ${join(",", self.name_servers)}"
    }
}


resource "aws_route53_record" "www" {
    count = var.setup_zone ? 1 : 0
    zone_id = "${aws_route53_zone.primary[count.index].zone_id}"
    name = "www.${var.domain_name}"
    type = "A"
    ttl = "300"
    records = ["${aws_instance.wordpress.public_ip}"]
}

resource "aws_route53_record" "alias" {
    count = var.setup_zone ? 1 : 0
    zone_id = "${aws_route53_zone.primary[count.index].zone_id}"
    name = "${var.domain_name}"
    type = "A"

    alias {
        name = "${aws_route53_record.www[count.index].name}"
        zone_id = "${aws_route53_zone.primary[count.index].zone_id}"
        evaluate_target_health = false
    }
}
