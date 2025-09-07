terraform {
  backend "s3" {
    bucket = "dev-proj-1-remote-state-bucket-miniss"
    key    = "devops-project-1/terraform.tfstate"
    region = "us-west-1"
  }
}