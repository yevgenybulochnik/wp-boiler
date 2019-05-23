# WordPress BoilerPlate
Boilerplate setup to create a wordpress site using terraform to stand up resources on AWS, ansible to provision resources and docker to execute application code. 
#### Tasks
- Terraform
    - [ ] Stand up a single EC2 instance 
    - [ ] Configure security groups, port 80 & 443
    - [ ] Route53 setup for hosted zone, domain name and record types
    - [ ] Explore use of local-exec with boto3 to set domain nameservers
    - [ ] Explore use of RDS, not to be implemented initially
- Ansible
    - Primary responsible for setting up limited host dependencies and potentially template files for docker
    - [ ] Install docker, and docker-compose 
    - [ ] Setup fail2ban
    - [ ] PSWDless sudo user with dotfiles and editor setup?
- Docker
    - Setup must allow for postgres, django-rest-framework, and react/angular setups in the future. 
    - Nginx
        - [ ] Setup +- reverse proxy to all other containers
        - [ ] Integration with certbot and letsencrypt for automatic renewal of ssl certificates 
    - Certbot
        - [ ] Setup + auto renewal of ssl certs
    - Wordpress
    - WP-Cli
