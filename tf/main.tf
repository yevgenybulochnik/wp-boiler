

module "web" {
    source = "./instance"
}

module "zone" {
    source = "./hzone"

    public_ip = module.web.instance_public_ip
    domain_name = "yevgenybulochnik.com"
    provision_r53domain = true
}
