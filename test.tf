output "test" {
  value = "Hello world"
}

variable "name" {
  default = "Emmanuel"
}

output "name" {
  value = var.name
}
