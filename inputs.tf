variable "region" {
  type = string
  default = "us-east-1"
  description = "for the vpc "
}
variable "cidr_block" {
    type = list(string)

}
variable "subnet_cidrs" {
    type = list (string)
}
