variable "project" {
  description = "Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "GCP region (e.g., europe-west1)"
  default     = "europe-west1"
}

variable "zone" {
  description = "GCP zone (e.g., europe-west1-b)"
  default     = "europe-west1-b"
}