terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.26.0"
    }
  }
   backend "gcs" {
      bucket = "bct"
      prefix = "/"
  }
}
variable "project" {
    type = string
    default = "folder"
}
provider "google" {
  project     = "${local.projectid}"
  region      = "europe-central2"
}

