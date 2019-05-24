#!/usr/bin/env python
import sys
import boto3

domain_name = sys.argv[1]
name_servers = sys.argv[2].split(',')

r53domains = boto3.client('route53domains', region_name='us-east-1')

r53domains.update_domain_nameservers(
    DomainName=domain_name,
    Nameservers=[dict(Name=ns) for ns in name_servers]
)
