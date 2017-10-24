variable "ssh_user" {
  description = "SSH User"
  default     = "ubuntu"
}

variable "private_key_path" {
  description = "Path to the SSH private key to be used for authentication"
  default     = "~/.ssh/terraform_rsa"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default     = "~/.ssh/terraform_rsa.pem"
}

variable "aws_region" {
  description = "AWS region to launch servers"
  default     = "eu-west-1"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-674cbc1e"
    us-east-1 = "ami-1d4e7a66"
    us-west-1 = "ami-969ab1f6"
    us-west-2 = "ami-8803e0f0"
  }
}
