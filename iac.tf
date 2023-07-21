terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }

  required_version = ">= 1.2.0"
}
provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"
  key_name = "iac-student"
  # user_data = <<-EOF
             #   #!/bin/bash
              #  cd /home/ubuntu
               # echo "<h1> Feito com o terraform </h1>" > index.html
               # nohup busybox httpd -f -p 8080 &
                # https://github.com/EOF
  tags = {
    Name = "Terraform Ansible Python"
  }
}
