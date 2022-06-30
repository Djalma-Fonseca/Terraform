resource "aws_s3_bucket" "s3-teste" {
    bucket = var.bucket
    acl = "private"

    tags = {
        Name = "s3-teste"
    }
}