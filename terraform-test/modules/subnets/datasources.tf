data "terraform_remote_state" "remote" {
  backend = "s3"

  config = {
    bucket = "my-terrraform-s3"
    key    = "demo-rmstate/terraform.tfstate"
    region = "us-east-1"
  }
}


data "aws_availability_zones" "available" {
  state = "available"
}
