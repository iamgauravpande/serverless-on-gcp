terraform {
  backend "gcs" {
    bucket  = "serverless-on-gcp"
    prefix  = "tfstate"
    project = "bitlost"
  }
}