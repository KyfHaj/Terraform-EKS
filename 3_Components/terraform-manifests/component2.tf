resource "aws_instance" "ec2_ok" {
  #count = 4                                             #Tạo 4 EC2 cùng loại

  ami           = "ami-0bba69335379e17f8"                # Amazon Linux in ap-northeast-1, update as per your region
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  key_name = "japanese"
  tags = {
    "Name" = "EC2 kyf26"
  }
}