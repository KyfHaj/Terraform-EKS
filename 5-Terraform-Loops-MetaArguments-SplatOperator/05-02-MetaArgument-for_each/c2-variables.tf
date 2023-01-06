# Input Variables
# AWS Region
variable "aws_region" {
  description = "Chọn AWS Region"
  type = string
  default = "ap-northeast-1"  # Chọn Tokyo
}
variable "instance_type" {
  description = "Chọn EC2 Instance type"
  type = string
  default = "t2.micro"
}
variable "instance_keypair" {
  description = "Chọn keypair"
  type = string
  default = "japanese"
}

# AWS EC2 Instance Type - List
variable "instance_type_list" {
  description = "EC2 Instance Type"
  type = list(string)
  default = ["t2.micro", "t2.small", "t2.large"]
}

# AWS EC2 Instance Type - Map
variable "instance_type_map" {
  description = "EC2 Instance Type"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qa" = "t2.small"
    "prod" = "t2.large"
  }
}
