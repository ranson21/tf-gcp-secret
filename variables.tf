variable "project" {
  description = "GCP Project"
  type        = string
}

variable "secrets" {
  description = "Map of secrets with key being secret name"
  type        = map(any)
}
