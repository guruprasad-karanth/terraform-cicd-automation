# test
variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "project_name" {
  default = "terraform-cicd"
}

variable "ec2_public_key" {
  description = "EC2 public key"
}
