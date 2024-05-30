output "secret_id" {
  value = [for secret in google_secret_manager_secret_version.secret_version : secret.id]
}
