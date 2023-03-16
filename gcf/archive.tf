resource "google_storage_bucket_object" "archive" {
  name   = "source_code.zip"
  bucket = "${var.project}"
  source = "../source_code.zip"
}




