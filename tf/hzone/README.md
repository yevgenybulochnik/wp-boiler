# Hzone Module
This module creates a new aws hosted zone for a specific domain name. It also allows you to set the correct domain nameservers for domains bought with route53. A Boto3 script is used to assign the correct nameservers in route53domains as terraform does not currently support route53domains

### Variables
```
domain_name         # Name of domain
public_ip           # Public ip address of aws instance
provision_r53domain # Boolean to trigger boto3 script to adjust nameservers
```

### Outputs
```
No outputs currently set for this module
```
