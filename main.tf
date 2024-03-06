variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID"
  type        = string
  default     = "ami-05fa00d4c63e32376" # Default AMI ID
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
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
