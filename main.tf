# Define a região da AWS
provider "aws" {
  region = "us-east-1"
}

resource "aws_cloud9_environment_ec2" "myide" {
  instance_type = "t2.micro"
  name          = "myide-env"
  image_id      = "amazonlinux-2023-x86_64"
}

data "aws_instance" "cloud9_instance" {
  filter {
    name = "tag:aws:cloud9:environment"
    values = [
    aws_cloud9_environment_ec2.myide.id]
  }
}

output "cloud9_url" {
  value = "https://us-east-1.console.aws.amazon.com/cloud9/ide/${aws_cloud9_environment_ec2.myide.id}"
}