resource "google_storage_bucket" "mvnrepo" {
  force_destroy = true
  name     = "mvnrepo-${var.PROJECT_ID}"
}