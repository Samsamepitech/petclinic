resource "google_sql_database" "customers" {
  name     = "customers"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database" "vets" {
  name     = "vets"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database" "visits" {
  name     = "visits"
  instance = google_sql_database_instance.instance.name
}

# See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
resource "google_sql_database_instance" "instance" {
  name             = "petclinic-instance"
  region           = "europe-west1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-n1-standard-16"
  }

  deletion_protection  = "true"
}