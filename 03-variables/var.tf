# declaring variable with a value
variable "x" {
  default=100
}

# declaring a variable without a value
variable "y"{}

# print the variable

output "x" {
  value=var.x
}


