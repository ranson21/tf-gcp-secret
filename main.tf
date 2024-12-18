resource "google_secret_manager_secret" "secret" {
  for_each  = var.secrets
  secret_id = each.key

  labels = {
    label = "${each.key}"
  }

  replication {
    auto {}
  }
}


resource "google_secret_manager_secret_version" "secret_version" {
  for_each = google_secret_manager_secret.secret
  secret   = each.value.id

  secret_data = var.secrets[each.value.secret_id]
}
