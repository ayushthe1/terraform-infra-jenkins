bucket_name = "dev-proj-1-jenkins-remote-state-bucket-101010"

vpc_cidr             = "11.0.0.0/16"
vpc_name             = "dev-proj-jenkins-eu-west-vpc-1"
cidr_public_subnet   = ["11.0.1.0/24", "11.0.2.0/24"]
cidr_private_subnet  = ["11.0.3.0/24", "11.0.4.0/24"]
eu_availability_zone = ["eu-west-1a", "eu-west-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCkHLGi3UoxYqDOK6KNwlAcLjzF8gu6SV1/7tHR4S/5tKRuRL5BqgRKobvImu7mLUIgaau/dLS6NCOCOV3Os6slAndcpXD+3w4Yl5ebCk3e7MeFUwxOUNqCj8sUv/Vpxxfn7Pegd7DStpjqA0XujJb8as2dLO4sqmd2CS4Ru8HhuPwEtKYQuRd36p/UODBPU57n+bP4J6HkZ3trEF2LWGQPMcr1RfC2ObLTpOpB1VPooItRSAbyGaMe0Bj9wiJ7XHRjRRR/hJec0ygF5pT6boPn3TU2wpawh75iOjT4uQ9ukgZQwyVg53ymwJDnblidEgFOcTOCdXfy6Uqi+CnXpkJl ayush007@ayush007"
ec2_ami_id = "ami-0694d931cee176e7d"