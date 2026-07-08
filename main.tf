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

resource "aws_instance" "aws_console" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-AWS-Console"
  }
}