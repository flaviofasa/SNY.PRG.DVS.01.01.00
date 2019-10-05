// Configure the Google Cloud provider
provider "google" {
 credentials = "${file("/home/vagrant/sny-prg-dvs-01-01-00-d6ee8c94b0e7.json")}"
 project     = "sny-prg-dvs-01-01-00"
 region      = "us-west1-a"
}

// Terraform plugin for creating random ids
resource "random_id" "instance_id" {
 byte_length = 8
}

resource "google_storage_bucket" "mvnrepo" {
  name     = "mvnrepo-${random_id.instance_id.hex}"
}