terraform {
  required_version = ">=0.15.3"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=5.10.0"
    }
  }
  backend "gcs" {
    bucket  = "serverless-on-gcp"
    prefix  = "tfstate"
    project = "bitlost"
  }
}