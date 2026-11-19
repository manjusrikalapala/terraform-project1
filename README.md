# Terraform EC2 Web Server Project

## Overview

This project uses Terraform to provision infrastructure on AWS and deploy a Linux EC2 instance running an Apache web server.

The web server is configured automatically using a user data script and serves a simple HTML page.

## Architecture

Terraform provisions:

- EC2 Instance
- Security Group
- Default VPC
- AWS Amazon Linux 2023 AMI

## Files

| File | Description |
|--------|-------------|
| main.tf | Main Terraform configuration |
| variables.tf | Variable definitions |
| outputs.tf | Terraform outputs |
| userdata.sh | Apache installation and web page setup |
| .terraform.lock.hcl | Provider dependency lock file |
| README.md | Project documentation |

## Prerequisites

- Terraform
- AWS CLI
- AWS Account with permissions to create EC2 resources

Verify installations:

```bash
terraform -version
aws --version
```

## Deployment Steps

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Review execution plan:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

Type:

```text
yes
```

when prompted.

## Accessing the Application

After deployment, obtain the public IP:

```bash
terraform output
```

Open the IP address in a browser:

```text
http://<public-ip>
```

Expected output:

```text
Terraform EC2 Web Server Successfully Deployed
```

## Cleanup

Destroy all resources:

```bash
terraform destroy
```

Type:

```text
yes
```

to confirm.

## Author

Manjusri Kalapala

## GitHub Repository

https://github.com/manjusrikalapala/terraform-project1
