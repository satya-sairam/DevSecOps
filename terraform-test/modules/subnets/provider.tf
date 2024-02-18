

provider "aws" {
  region = var.region
}


data "terraform_remote_state" "vpcccc" {
  backend = "s3"

  config = {
    bucket = "my-terrraform-s3"
    key    = "demo-rmstate/terraform.tfstate"
    region = "us-east-1"
  }
}
