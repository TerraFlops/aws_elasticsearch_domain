variable "domain_name" {
  type = string
}

variable "availability_zone_count" {
  type = number
}

variable "instance_type" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "volume_size" {
  type = number
}

variable "subnet_ids" {
  type = set(string)
}

variable "security_group_ids" {
  type = set(string)
}

variable "encrypt_at_rest" {
  type = bool
  default = false
}

variable "ebs_enabled" {
  type = bool
  default = true
}

variable "elasticsearch_version" {
  type = string
  default = "7.4"
}

variable "volume_type" {
  type = string
  default = "gp2"
}

