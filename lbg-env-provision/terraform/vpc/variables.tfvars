#VPC
network_name = "assignment"

#Subnet
subnetwork_name = "private"
ip_cidr_range = "10.0.0.0/18"
region = "us-central1"
network_id = "https://www.googleapis.com/compute/v1/projects/lloyds-assignment/global/networks/assignment"
private_ip_google_access = true
k8s_pod_range = "10.48.0.0/14"
k8s_service_range = "10.52.0.0/20"