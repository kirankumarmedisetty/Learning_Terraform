provider "aws" {
     region = "ap-north-1"  # Set your desired AWS region
   }

resource "aws_instance" "example" {
    ami           = "ami-0d176f79571d18a8f"  # Specify an appropriate AMI ID
    instance_type = "t3.micro"
    key_name = "codespace-key"
}

resource "aws_key_pair" "deployer" {
  key_name   = "codespace-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID88w/vf6k16uGylqjRn63tKh6Y9saTP65cV2IaDycEk codespace@codespaces-4245e0"
}
