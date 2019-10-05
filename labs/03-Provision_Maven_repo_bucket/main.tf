// Configure the Google Cloud provider
provider "google" {
 credentials = "${file("${var.CREDENTIAL_FILE}")}"
 project     = "${var.PROJECT_ID}"
 region      = "${var.REGION}"
}

resource "google_storage_bucket" "mvnrepo" {
  force_destroy = true
  name     = "mvnrepo-${var.PROJECT_ID}"
}