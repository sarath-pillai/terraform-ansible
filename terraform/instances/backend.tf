terraform {
  backend "s3" {
      bucket = "terraform-authoriti-test"
      key = "instances"
      region = "us-east-1"
      encrypt = true
  }
  workspace = "${var.environment_name}"
}
