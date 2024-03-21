variable "domain_name" {}
variable "aws_lb_dns_name" {}
variable "aws_lb_zone_id" {}

// configuration to set up a Route 53 alias record for the specified domain name, which directs traffic to the specified ALB using its DNS name

data "aws_route53_zone" "dev_proj_1_ayush" {
  name         = "ayushsharma.co.in"
  private_zone = false
}

// create a A record in the hosted zone
resource "aws_route53_record" "lb_record" {
  zone_id = data.aws_route53_zone.dev_proj_1_ayush.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = var.aws_lb_dns_name // DNS name to which the alias record will point (our lb)
    zone_id                = var.aws_lb_zone_id //  Specifies the hosted zone ID of the DNS name
    evaluate_target_health = true
  }
}

output "hosted_zone_id" {
  value = data.aws_route53_zone.dev_proj_1_ayush.zone_id
}

// In real word scenario ,DNS resolves domain name to the load balancer IP address