provider "aws" {
  region = "us-east-1"  # Altere para a região desejada
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # AMI da camada gratuita
  instance_type = "t2.micro"
}