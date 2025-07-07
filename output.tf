output "website_url" {
  description = "The S3 static website URL"
  value       = aws_s3_bucket.website.website_endpoint
}
