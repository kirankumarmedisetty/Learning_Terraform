########################################
# main.tf
########################################
resource "aws_instance" "servers" {
  for_each      = var.servers
  ami           = each.value.ami_id
  instance_type = each.value.instance_type
  key_name = each.value.key_name

  tags = {
    Name = each.key
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "codespace-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID88w/vf6k16uGylqjRn63tKh6Y9saTP65cV2IaDycEk codespace@codespaces-4245e0"
}