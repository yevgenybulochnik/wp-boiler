# Instance Module
This module will create an EC2 instance with configured security goups and ssh setup.

### Variables
```
instance-type # Type of AWS instance
myip          # Public ip address
ssh-ip        # ip t whitelist for security group
key-name      # Name of ssh key
```

### Outputs
```
instance_public_ip # Assigned public ip address of instance
```
