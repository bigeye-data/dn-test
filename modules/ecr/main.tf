resource "aws_ecr_repository" "dn-test" {
  name  = var.name
  encryption_configuration {
    encryption_type = "AES256"
  }
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }

  lifecycle {
    prevent_destroy = false
  }
}