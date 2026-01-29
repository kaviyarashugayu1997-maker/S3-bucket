terraform {
  required_providers {
    aws ={
        source = "hashicop/aws"
        version = "~>5.0"
    }
  }
}

provider "aws" {
    region = var.aws_region
  
}
resource  "aws_s3_bucket" "this" {
  bucket = var.bucket_name
 
 tag{
    name = "Terraforms3bucket"
    Enviroment = "Test"
 }
}
resource "aws_s3_bucket_versioning" "this" {
    bucket = aws_s3_bucket.this.id
  
}
