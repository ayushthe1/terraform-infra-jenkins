variable "domain_name" {}
variable "hosted_zone_id" {}

output "dev_proj_1_acm_arn" {
  value = aws_acm_certificate.dev_proj_1_acm_arn.arn
}

// create an AWS ACM certificate for the specified domain name using DNS validation
resource "aws_acm_certificate" "dev_proj_1_acm_arn" {
  domain_name       = var.domain_name // domain name for which the SSL/TLS certificate will be issued
  validation_method = "DNS" // validation method to use for proving ownership of the domain

  tags = {
    Environment = "production"
  }

  lifecycle {
    create_before_destroy = false // Specifies whether to create the new certificate before destroying the old one
  }
}

// creates Route 53 DNS records for each domain validation option associated with the specified ACM certificate. The DNS records are created in the specified hosted zone and have the name, type, and record value taken from the corresponding attributes of each domain validation option
resource "aws_route53_record" "validation" {
  for_each = {
    for dvo in aws_acm_certificate.dev_proj_1_acm_arn.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  zone_id = var.hosted_zone_id 
  name    = each.value.name
  type    = each.value.type
  records = [each.value.record]
  ttl     = 60
}

