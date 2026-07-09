terraform {
  backend "s3" {
    bucket = "zakki-terraform-state-2026"
    key    = "terraform-learning/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-First-EC2"
  }
}

resource "aws_ec2_instance_state" "web_state" {
  instance_id = "i-05260073427c17ea7"
  # Change it from "stopped" to STOP and "running" to start
  state = "stopped"
}