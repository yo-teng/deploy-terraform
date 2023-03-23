terraform {
  backend "gcs" {
    bucket  = "deploy-terraform"
    prefix  = "state/cloud_armor"
  }
}
