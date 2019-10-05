// Configure the Google Cloud provider
provider "google" {
 credentials = "${file("/home/vagrant/sny-prg-dvs-01-01-00-d6ee8c94b0e7.json")}"
 project     = "sny-prg-dvs-01-01-00"
 region      = "us-west1-a"
}



resource "google_sourcerepo_repository" "my-repo" {
  name = "my-repository"
}