variable "project" {
  description = "GCP Project"
  type        = string
}

variable "name" {
  description = "Name of service account"
  type        = string
}

variable "secret" {
  description = "Secret data to be saved"
  type        = string
}
