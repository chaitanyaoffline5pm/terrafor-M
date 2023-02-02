terraform {
  backend "s3" {
    bucket     = "cgitedu-backend-m"
    key        = "terraform.tfstate"
   dynamodb_table = "terraform-state-lock-dynamo-M"
    region     = "us-east-2"
    access_key = "AKIAXO3NKANRGA2DVRPR"
    secret_key = "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"
  }
}

provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAXO3NKANRGA2DVRPR"
  secret_key = "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"
}
