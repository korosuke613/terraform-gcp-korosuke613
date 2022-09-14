terraform {
  backend "gcs" {
    bucket = "terraform-state-korosuke613"
    prefix = "terraform-gcp-korosuke613"
  }

  required_version = "~> 1.2.8"

  required_providers {
    google = {
      version = "~> 4.34"
    }
  }
}

provider "google" {
  project = "korosuke613"
  region  = "asia-northeast1"
}
