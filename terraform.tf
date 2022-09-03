terraform {
  backend "gcs" {
    bucket  = "terraform-state-korosuke613"
    prefix  = "terraform-gcp-korosuke613"
  }
}

provider "google" {
  project     = "korosuke613"
  region      = "asia-northeast1"
}
