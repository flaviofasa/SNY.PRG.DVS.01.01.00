resource "google_cloudbuild_trigger" "world-trigger" {

  provider = "google-beta"

  /*trigger_template {
    tag_name = ".*"
    repo_name   = "${var.WORLD_REPO_NAME}"
  }*/

github {
    
    owner = "${var.WORLD_REPO_OWNER}"
    name = "${var.WORLD_REPO_NAME}"
    push {
      tag = ".*"
    }
  }
  

  substitutions = {
    _ARTIFACT_ID = "${var.WORLD_ARTIFACT_ID}"
    _GROUP_ID = "${var.WORLD_GROUP_ID}"
    _BUCKET_NAME = "mvnrepo-${var.PROJECT_ID}"
  }

  

  filename = "cloudbuild.yaml"
}