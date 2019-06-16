# WordPress BoilerPlate
Boilerplate setup to create a wordpress site using terraform to stand up resources on AWS, ansible to provision resources and docker to execute application code.
#### Tasks
- Terraform
    - [x] Stand up a single EC2 instance
    - [x] Configure security groups, port 80 & 443
    - [x] Route53 setup for hosted zone, domain name and record types
    - [x] Explore use of local-exec with boto3 to set domain nameservers
    - [ ] Explore use of RDS, not to be implemented initially
    - [x] Change to use modules
    - [x] Refactor module vars and resource names
    - [ ] Add Readmes to modules
- Ansible
    - Primarily responsible for setting up limited host dependencies and potentially template files for docker
    - [x] Install docker, and docker-compose
    - [x] Setup fail2ban
    - [ ] PSWDless sudo user with dotfiles and editor setup?
- Docker
    - Setup must allow for postgres, django-rest-framework, and react/angular setups in the future.
    - [x] Traefik setup for http and https
    - Wordpress
    - WP-Cli
