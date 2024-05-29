output "secret_id" {
  value = google_secret_manager_secret_version.secret-version-basic.id
}
