resource "google_secret_manager_secret" "secret" {
  secret_id = var.name

  labels = {
    label = "${var.name}"
  }

  replication {
    auto {}
  }
}


resource "google_secret_manager_secret_version" "secret-version-basic" {
  secret = google_secret_manager_secret.secret.id

  secret_data = var.secret
}
