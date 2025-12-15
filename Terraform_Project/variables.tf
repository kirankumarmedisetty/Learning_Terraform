########################################
# variables.tf
########################################
variable "servers" {
  description = "Map of server configurations"
  type = map(object({
    instance_type = string
    ami_id        = string
    key_name  = string
  }))
  default = {
    ansible-master = {
      instance_type = "t3.micro"
      ami_id        = "ami-00ca570c1b6d79f36" # Amazon Linux 2023 kernel-6.1 AMI (example)
      key_name = "codespace-key"
    }
    ansible-slave-01 = {
      instance_type = "t3.micro"
      ami_id        = "ami-00ca570c1b6d79f36"
      key_name = "codespace-key"
    }
    ansible-slave-02 = {
      instance_type = "t3.micro"
      ami_id        = "ami-00ca570c1b6d79f36"
      key_name = "codespace-key"
    }
  }
}
  