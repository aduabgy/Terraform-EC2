provider "aws" {
  region = var.REGION
  #   access_key = ""
  #   secret_key = ""	
}

resource "aws_instance" "intro-pipeline" {
  ami                    = var.AMI
  instance_type          = var.TYPE
  availability_zone      = var.ZONE
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-0b4f8ac8b6f5132b3"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}

