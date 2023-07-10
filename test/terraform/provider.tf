terraform {
  required_providers {
    google = {
      source = "hashicorp/google" }
  }
}
provider "google" {
  version = "4.51.0"
  project = "taibi-samira"
  credentials = ""
  region  = "europe-west1"
  zone    = "europe-west1-b"
}
# terraform {
#   backend "gcs" {
#     bucket      = "samsambucket"
#     prefix      = "terraform"
#     credentials =  "taibi-samira-b2411ac21c59.json"
#   }
# }