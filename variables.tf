variable "create_metric_exporter" {
  type        = bool
  description = "Controls whether the Spot Ocean Metric Exporter should be created."
  default     = true
}

variable "create_namespace" {
  type        = bool
  description = "Controls whether the namespace should be created if it does not yet exist."
  default     = true
}

variable "chart_version" {
  type        = string
  description = "Chart version to be deployed."
  default     = "1.0.4"
}

variable "chart_repository" {
  type        = string
  description = "Repository URL where to locate the Spot Ocean Metric Exporter chart."
  default     = "https://charts.spot.io"
}

variable "chart" {
  type        = string
  description = "Chart name to be deployed."
  default     = "ocean-metric-exporter"
}

variable "chart_namespace" {
  type        = string
  description = "Chart namespace to install the release into."
  default     = "spot-system"
}

variable "secret_name" {
  type        = string
  description = "Secret name."
  default     = null
}

variable "namespace" {
  type        = string
  description = "Kubernetes namespace where the components should be installed."
  default     = null
}

variable "config_map_name" {
  type        = string
  description = "ConfigMap name."
  default     = null
}

variable "ca_bundle_secret_name" {
  type        = string
  description = "CA bundle secret name."
  default     = null
}

variable "replica_count" {
  type        = number
  description = "Replicas."
  default     = null
}

variable "image_repository" {
  type        = string
  description = "Image repository."
  default     = null
}

variable "image_tag" {
  type        = string
  description = "Image tag."
  default     = null
}

variable "image_pull_policy" {
  type        = string
  description = "Image pull policy."
  default     = null
}

variable "image_pull_secrets" {
  type        = string
  description = "Image pull secrets."
  default     = null
}

variable "create_service" {
  type        = bool
  description = "Controls whether a service should be created."
  default     = null
}

variable "metricsconfiguration_categories" {
  type        = list(string)
  description = "List of Categories to enable - if empty will get no metrics. Additional possible values can be found here: https://docs.spot.io/ocean/tools-and-integrations/prometheus/scrape?id=categories"
  default     = ["scaling"]
}

variable "metricsconfiguration_allow_metrics" {
  type        = list(string)
  description = "List of Metrics to allow - if empty will get everything. Shouldn't be used with `denyMetrics`. Possible values can be found here: https://docs.spot.io/ocean/tools-and-integrations/prometheus/scrape?id=metrics"
  default     = null
}

variable "metricsconfiguration_deny_metrics" {
  type        = list(string)
  description = "List of Metrics to deny - if empty will get everything. Shouldn't be used with `allowMetrics`. Possible values can be found here: https://docs.spot.io/ocean/tools-and-integrations/prometheus/scrape?id=metrics"
  default     = null
}

variable "metricsconfiguration_allow_labels" {
  type        = list(string)
  description = "List of Labels to allow - if empty will get everything. Shouldn't be used with `denyLabels`. Possible values can be found here: https://docs.spot.io/ocean/tools-and-integrations/prometheus/scrape?id=labels"
  default     = null
}

variable "metricsconfiguration_deny_labels" {
  type        = list(string)
  description = "List of Labels to deny - if empty will get everything. Shouldn't be used with `allowLabels`. Possible values can be found here: https://docs.spot.io/ocean/tools-and-integrations/prometheus/scrape?id=labels"
  default     = null
}

variable "resources_limits" {
  type        = map(any)
  description = "Specifies the definition of the maximum amount of compute resources allowed"
  //default     = null
    default = {
      cpu    = "0.5"
      memory = "512Mi"
    }
}
/*
variable "resources_requests" {
  type        = map(any)
  description = "Specifies the definition of the minimum amount of compute resources required"
  //default     = null
    default = {
      cpu    = "0.5"
      memory = "512Mi"
    }
}*/

variable "resources_limits_cpu" {
  type        = string
  description = "CPU Limits"
  default     = "300m"
}

variable "resources_limits_memory" {
  type        = string
  description = "Memory Limits"
  default     = "300Mi"
}

variable "resources_requests_cpu" {
  type        = string
  description = "CPU Requests"
  default     = "250m"
}

variable "resources_requests_memory" {
  type        = string
  description = "Memory Requests"
  default     = "500Mi"
}


