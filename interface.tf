variable "name" {
  description = "name of vpc"
}

variable "cidr" {
  description = "CIDR if vpc"
}

variable "public_subnet" {
  description = "public subnet to create"
}

variable "enable_dns_hostnames" {
  description = "Should be true if your want to use private DNS within the VPC"
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true if you wish to use private dns in vpc"
  default     = true
}

output "public_subnet_id" {
  value     = "${aws_subnet.public.id}"
  sensitive = true
}

output "vpc_id" {
  value = "${aws_vpc.tfb.id}"
}

output "cidr" {
  value = "${aws_vpc.tfb.cidr_block}"
}
