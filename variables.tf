variable "aws_access_key_id" {}

variable "aws_region" {}

variable "aws_secret_access_key" {}

variable "es_host" {}

variable "host" {}

variable "swapfile_size" {
  default     = "4G"
  description = "Swapfile size to create in fallocate format"
}
