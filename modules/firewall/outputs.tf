output "ssh_rule" {
  value = google_compute_firewall.ssh.name
}

output "http_rule" {
  value = google_compute_firewall.http.name
}

output "https_rule" {
  value = google_compute_firewall.https.name
}

output "internal_rule" {
  value = google_compute_firewall.internal.name
}