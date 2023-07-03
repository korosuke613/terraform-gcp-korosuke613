terraform {
  backend "gcs" {
    bucket = "terraform-state-korosuke613"
    prefix = "terraform-gcp-korosuke613"
  }

  required_version = "~> 1.5.2"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.71"
    }
  }
}

provider "google" {
  project = "korosuke613"
  region  = "asia-northeast1"
}
