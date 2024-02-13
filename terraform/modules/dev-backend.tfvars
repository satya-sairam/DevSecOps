terraform {
  backend "s3" {
    bucket = "my-terrraform-s3"
    key    = "${var.env}/terraform.tfstate"
    region = var.region
  }
}
