resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  tags={
   Name= "frontend"
  }


}
resource "aws_instance" "backend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  tags={
    Name= "backend"
  }

}
resource "aws_instance" "mysql" {
  ami           = var.ami

  instance_type = var.instance_type

  vpc_security_group_ids = var.vpc_security_group_ids

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
# we can declare empty variables,but data can be sent from a file ,these files are called tfvars
variable "env"{}
output "env"{
  value=var.env
}


