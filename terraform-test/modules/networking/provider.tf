

provider "aws" {
  region = var.region
}


terraform {

  backend "s3" {

    bucket = "my-terrraform-s3"
    key    = "demo-rmstate/terraform.tfstate"
    region = "us-east-1"
  }
}



