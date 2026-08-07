# iam module
resource "google_service_account" "this" {

  account_id   = var.service_account_name
  display_name = var.display_name

  project = var.project_id
}

resource "google_project_iam_member" "roles" {

  for_each = toset(var.roles)

  project = var.project_id

  role = each.value

  member = "serviceAccount:${google_service_account.this.email}"

}