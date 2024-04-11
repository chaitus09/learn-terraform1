resource "aws_instance" "frontend" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c06371b05b6070a7"]
  tags={
   Name= "frontend"
  }


}
resource "aws_instance" "backend" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c06371b05b6070a7"]
  tags={
    Name= "backend"
  }

}
resource "aws_instance" "mysql" {
  ami           = var.ami
#  "ami-090252cbe067a9e58"
  instance_type = var.instance_type
#  "t3.micro"
  vpc_security_group_ids = var.vpc_security_group_ids
#  ["sg-0c06371b05b6070a7"]
  tags={
    Name= "mysql"
  }

}

variable "ami"{
  default="ami-090252cbe067a9e58"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0c06371b05b6070a7"]


}