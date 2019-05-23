

resource "aws_route53_zone" "primary" {
    name = "${var.domain_name}"
}


resource "aws_route53_record" "www" {
    zone_id = "${aws_route53_zone.primary.zone_id}"
    name = "www.${var.domain_name}"
    type = "A"
    ttl = "300"
    records = ["${aws_instance.wordpress.public_ip}"]
}

resource "aws_route53_record" "alias" {
    zone_id = "${aws_route53_zone.primary.zone_id}"
    name = "${var.domain_name}"
    type = "A"
    
    alias {
        name = "${aws_route53_record.www.name}"
        zone_id = "${aws_route53_zone.primary.zone_id}"
        evaluate_target_health = false
    }
}

output "name_servers" {
    value = "${aws_route53_zone.primary.name_servers}"
}