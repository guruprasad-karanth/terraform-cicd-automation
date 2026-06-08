# Terraform + CI/CD Automation

Automated AWS infrastructure provisioning with Terraform and CI/CD pipeline using GitHub Actions and Docker.

## Tech Stack
- IaC: Terraform
- Cloud: AWS (VPC, EC2)
- CI/CD: GitHub Actions
- Container: Docker
- App: Node.js + Express

## Setup

### Deploy Infrastructure
cd terraform && terraform init && terraform apply

### CI/CD
Auto-triggers on push to main:
1. Builds Docker image
2. Copies to EC2
3. Restarts container

### Rollback
./rollback.sh <commit-sha>

## Secrets Required
- EC2_HOST
- EC2_SSH_KEY

## Project Structure
app/ - Node.js app + Dockerfile
terraform/ - VPC, EC2, ALB configs
.github/workflows/ - CI/CD pipeline
rollback.sh - Rollback script
