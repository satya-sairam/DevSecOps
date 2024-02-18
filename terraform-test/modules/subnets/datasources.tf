data "terraform_remote_state" "new" {
  backend = "s3"

  config = {
    bucket = "my-terrraform-s3"
    key    = "demo-rmstateee/terraform.tfstate"
    region = "us-east-1"
  }
}


data "aws_availability_zones" "available" {
  state = "available"
}
