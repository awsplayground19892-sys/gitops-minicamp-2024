terraform {
  required_version = "~> 1.12.2"
  backend "s3" {
    bucket         = "dev-params-tfstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "GitopsTerraformLocks"
  }
}
