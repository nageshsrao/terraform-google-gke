resource "google_container_cluster" "kubernetes_cluster" {
    name     = var.cluster_name
    project  = var.project_id
    location = var.location
    initial_node_count = var.initial_node_count
    network            = var.network
    subnetwork         = var.subnetwork

    node_config {
        preemptible     = var.preemptible
        machine_type    = var.machine_type
        service_account = (var.service_account != "" ? var.service_account : data.google_compute_default_service_account.default.email)
        oauth_scopes = [
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
            "https://www.googleapis.com/auth/cloudkms"
        ]
    }
    # depends_on = [google_compute_network.vpc_network] #Uncomment if creating google_compute_network.vpc_network below
}

data "google_client_config" "default" {
}

data "google_compute_default_service_account" "default" {
    project = var.project_id
}
