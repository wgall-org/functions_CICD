resource "google_storage_bucket" "bucket" {
  name     = "${var.project}"
  location = "EU"
}