variable "project_id" {
    description = "GCP Project ID for GKE deployment"
}


variable "location" {
    description = "location to deploy kubernetes cluster into"
    default     = "us-central1-a"
}

variable "cluster_name" {
    description = "name of kubernetes cluster"
}

variable "initial_node_count" {
    description = "initial amount of nodes to deploy for the kubernetes cluster"
    default     = "1"
}

variable "network" {
    description = "network that the compute resources of the kubernetes cluster are in"
    default     = "default"
}

variable "subnetwork" {
    default = "default"
}

variable "machine_type" {
    description = "size of the compute resources"
    default     = "n1-standard-1"
}

variable "preemptible" {
    description = "Pre-emptible nodes True/False"
    default     = true
}

variable "service_account" {
    default     = ""
    description = "The GCP Service Account to be used by the node VMs"
}
