output "gke_endpoint" {
    value = google_container_cluster.kubernetes_cluster.endpoint
}

output "gke_access_token" {
    value = data.google_client_config.default.access_token
}
output "gke_cluster_ca_cert" {
    value = google_container_cluster.kubernetes_cluster.master_auth.0.cluster_ca_certificate
}

output "gke_connection_string" {
    value = "gcloud container clusters get-credentials ${var.cluster_name} --zone ${var.location} --project ${var.project_id}"
}
