resource "google_compute_subnetwork" "private" {
  name                   = var.subnetwork_name
  ip_cidr_range           = var.ip_cidr_range
  region                  = var.region
  network                 = var.network_id
  private_ip_google_access = var.private_ip_google_access

  secondary_ip_range {
    range_name = "k8s-pod-range"
    ip_cidr_range = var.k8s_pod_range
  }

  secondary_ip_range {
    range_name = "k8s-service-range"
    ip_cidr_range = var.k8s_service_range
  }
}