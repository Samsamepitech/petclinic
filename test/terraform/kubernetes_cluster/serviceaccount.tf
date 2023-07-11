resource "google_service_account" "sa-pull" {
  account_id = "sa-pull"
  display_name = "SA"
}

resource "google_project_iam_binding" "log_user" {

  project = "taibi-samira"
  role    = "roles/artifactregistry.reader"
  members = [
    "serviceAccount:${google_service_account.sa-pull.email}",
  ]
}