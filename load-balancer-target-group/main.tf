variable "lb_target_group_name" {}
variable "lb_target_group_port" {}
variable "lb_target_group_protocol" {}
variable "vpc_id" {}
variable "ec2_instance_id" {}

output "dev_proj_1_lb_target_group_arn" {
  value = aws_lb_target_group.dev_proj_1_lb_target_group.arn
}

resource "aws_lb_target_group" "dev_proj_1_lb_target_group" {
  name     = var.lb_target_group_name
  port     = var.lb_target_group_port //  Port on which targets receive traffic , unless overridden when registering a specific target.
  protocol = var.lb_target_group_protocol // Protocol to use for routing traffic to the targets
  vpc_id   = var.vpc_id
  health_check {
    path = "/login" // Destination for the health check request
    port = 8080 // The port the load balancer uses when performing health checks on targets
    healthy_threshold = 6 //  Number of consecutive health check successes required before considering a target healthy
    unhealthy_threshold = 2 // Number of consecutive health check failures required before considering a target unhealthy
    timeout = 2 // Amount of time, in seconds, during which no response from a target means a failed health check
    interval = 5 //  Approximate amount of time, in seconds, between health checks of an individual target
    matcher = "200" // The HTTP or gRPC codes to use when checking for a successful response from a target.
  }
}

// defines which targets (such as EC2 instances) are registered with the target group to receive traffic from the ALB
resource "aws_lb_target_group_attachment" "dev_proj_1_lb_target_group_attachment" {
  target_group_arn = aws_lb_target_group.dev_proj_1_lb_target_group.arn
  target_id        = var.ec2_instance_id // jenkins ec2 instance
  port             = 8080 // port on which targets receive traffic
}