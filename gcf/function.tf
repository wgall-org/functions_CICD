

resource "google_cloudfunctions_function" "function" {
  name        = var.project
  description = "Desc"
  runtime     = "nodejs18"

  available_memory_mb   = 128
  source_archive_bucket = "${var.project}"
  source_archive_object = "source_code.zip"
  trigger_http          = true
  entry_point           = "main"
  depends_on = ["${google_storage_bucket_object.archive}"]
}

# IAM entry for all users to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
  depends_on = [
    "${google_storage_bucket_object.archive}"
  ]
}