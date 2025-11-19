variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket1_name" {
  description = "Name of the first S3 bucket"
  type        = string
}

variable "bucket2_name" {
  description = "Name of the second S3 bucket"
  type        = string
}

variable "environment" {
  description = "Environment tag for the buckets"
  type        = string
}
