module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket                   = var.bucket_name
  acl                      = "private"
  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  tags = merge(var.tags, { "Name" = "${var.bucket_name}" })
}