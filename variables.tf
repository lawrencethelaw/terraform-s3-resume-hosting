variable "region" {
  description = "AWS region to deploy into"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Base name for the S3 bucket"
  default     = "my-terraform-website"
}


