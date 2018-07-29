terraform {
  backend "s3" {
      bucket = "terraform-authoriti-test"
      key = "network"
      region = "us-east-1"
      encrypt = true
  }
  workspace = "${var.environment_name}"
}
