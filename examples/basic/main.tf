provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "ocean-metrics-exporter" {
  source            = "../.."
  image_pull_policy = "Always"
  image_tag = "1.0.0-beta"
}

