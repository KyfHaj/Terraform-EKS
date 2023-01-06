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