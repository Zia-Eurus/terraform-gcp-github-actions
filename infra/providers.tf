provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "zia-test-bucket"
    prefix = "terraform/state"
  }
}