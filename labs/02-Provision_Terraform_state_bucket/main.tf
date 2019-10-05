// Configure the Google Cloud provider
provider "google" {
 credentials = "${file("${var.CREDENTIAL_FILE}")}"
 project     = "${var.PROJECT_ID}"
 region      = "${var.REGION}"
}

// Terraform plugin for creating random ids
resource "random_id" "instance_id" {
 byte_length = 8
}

resource "google_storage_bucket" "trfstate" {
  force_destroy = true
  bucket_policy_only = true
  name     = "${var.BACKEND_BUCKET_NAME}"
}