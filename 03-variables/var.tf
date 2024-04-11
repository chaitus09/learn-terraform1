# declaring variable with a value
variable "x" {
  default=100
}

# declaring a variable without a value
variable "y"{}

variable "y_list"{
  default = [1,2,3]
}
variable "z_map"{
  default ={

    x=10
    y=20
  }
}

# print the variable



output "x" {
  value=var.x
}

output "y" {
  value = var.y_list
}

output "z" {

  value=var.z_map
}

output "y_1" {
  value = var.y_list[1]
}

output "z_x" {
  value = var.z_map["x"]
}

