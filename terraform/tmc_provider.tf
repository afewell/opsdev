terraform {
  required_providers {
    tanzu-mission-control = {
      source  = "vmware/tanzu-mission-control"
      version = "${var.terraform_tmc_version}"
    }
  }
}

// Basic details needed to configure Tanzu Mission Control provider
provider "tanzu-mission-control" {
  endpoint            = "${var.tmc_endpoint}"
  vmw_cloud_api_token = "${secret.vmw_cloud_api_token}"
}
