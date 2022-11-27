variable "region" {
  type = string
  default = "us-east-1"
  description = "for the vpc "
}
variable "cidr_block_1" {
    type = string

}

variable "cidr_block_2" {
    type = string

}

variable "subnet_cidrs" {
    type = list (string)
    default = [ "192.168.1.0/24","10.168.1.0/24" ]
  
}
variable "subnet_name_tags" {
    type = list (string)
    default = [ "main1","dev1" ]
  
}

