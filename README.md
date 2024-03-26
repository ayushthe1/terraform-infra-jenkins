# DevOps Integration with Terraform, Jenkins, and AWS: Automating Infrastructure and Application Deployment

Implemented a comprehensive DevOps project utilizing Terraform, Jenkins, and AWS Cloud infrastructure. The project was structured into three key categories: tools, application, and AWS components. In the tools category, Terraform was employed for infrastructure automation, and Jenkins facilitated continuous integration and continuous deployment (CI/CD) pipelines. The application category involved the development of a REST-based web application using Python Flask and MySQL database hosted on an RDS instance. Various AWS components were utilized, including custom domain setup, EC2 instance deployment, and VPC configuration.

## Key Points

Project Overview: Constructed a DevOps project integrating Terraform, Jenkins, and AWS Cloud, delineated into tool usage, application development, and AWS resource deployment.

VPC Setup with Terraform: Established a Virtual Private Cloud (VPC) for Jenkins using Terraform, emphasizing module customization and subnet configuration.

VPC and Subnet Configuration: Configured VPC and subnets for the project, focusing on IP range specification and infrastructure provisioning.

VPC Verification: Validated VPC creation and subnet configuration through the AWS console, ensuring unique IDs and correct IP ranges.

Gateway Route Setup: Explored the significance of gateway routes in AWS environment, demonstrating route table creation and association with VPC.

EC2 Instance and Security Group Setup: Established EC2 instance and security groups in AWS infrastructure, prioritizing networking and firewall setup.

Jenkins Installation via Terraform: Utilized Terraform to set up an EC2 instance and install Jenkins, ensuring correct parameters and SSH access.

EC2 Instance and Jenkins Configuration: Further discussed EC2 instance setup and Jenkins installation using Terraform, emphasizing subnet placement and security group configuration.

Jenkins and Terraform Installation: Installed Jenkins and Terraform on an EC2 machine, following standard procedures and package management.

SSH Key Management: Managed SSH key permissions and connected to an EC2 instance securely, ensuring proper permissions and access.

Target Group and Load Balancer Setup: Created target groups and load balancers for efficient distribution of incoming requests, ensuring proper configuration for Jenkins instances.

Load Balancer Configuration: Configured load balancer using Terraform for optimal performance, considering target group association and HTTPS security.

Hosted Zones for URL Handling: Explored the role of hosted zones in managing URL requests, redirecting traffic to load balancers for efficient routing.

Zone Certificate Management: Managed zone certificates for website security, integrating with Google Domains and AWS Route 53 for redirection.

Pipeline Setup for Flask Application: Established a pipeline for Python Flask application deployment, integrating GitHub repository and Jenkins for infrastructure management.

User Data Section Setup: Configured user data section for EC2 instance, detailing installation process and repository management for Python application.

Infrastructure Setup for Python Application: Provisioned infrastructure for Python application, focusing on RDS instance provisioning and security group configuration.

Jenkins Pipeline Configuration: Configured Jenkins pipeline for AWS infrastructure provisioning, incorporating credentials management and Terraform commands execution.

Pipeline Execution for Project: Executed pipeline for the project, ensuring proper credentials, branch configuration, and successful infrastructure provisioning in the EU Central Frankfurt region.
