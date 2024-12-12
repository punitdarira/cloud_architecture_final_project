terraform {
  backend "s3" {
    bucket         = "punit-darira-final-project-terraform-state-bucket"
    key            = "terraform/state"
    region         = "us-east-1"
    dynamodb_table = "punit-darira-final-project-terraform-state-bucket-locks"
    encrypt        = true
  }
}