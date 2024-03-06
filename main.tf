variable "region" {
  description = "AWS region"
  type        = string
}

variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "srini-first-instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "TF-Instance"
  }
}
