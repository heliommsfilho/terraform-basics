variable "location" {
  description = "The Region to create the resources"
  type        = string
}

variable "bucket_name" {
  description = "The name of the bucket to be created"
  type        = string
  default     = "heliommsfilho-bucket-aula-19-default"
}