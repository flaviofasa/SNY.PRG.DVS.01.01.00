resource "google_storage_bucket" "trfstate" {
  force_destroy = true
  bucket_policy_only = true
  name     = "${var.BACKEND_BUCKET_NAME}"
}