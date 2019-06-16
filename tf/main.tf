

module "node1" {
    source = "./instance"
}

module "zone" {
    source = "./hzone"

    public_ip = module.node1.instance_public_ip
    domain_name = "yevgenybulochnik.com"
    provision_r53domain = true
}
