

provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-december-project01" {
  bucket = "terraform-december-project01"
  }
  terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-december-project01"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}