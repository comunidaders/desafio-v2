terraform {
  backend "s3" {
    bucket = "state-terraform-infra"
    key    = "infra-tf-infra-us-east-1"
    region = "us-east-1"
  }
}