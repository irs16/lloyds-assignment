################ VPC Variables################################
variable "network_name" {
  type = string
  description = "Name of the VPC network"
  default = "assignment"
}

variable "routing_mode" {
  type = string
  description = "Routing mode for the VPC network (REGIONAL or GLOBAL)"
  default = "REGIONAL"
}

variable "auto_create_subnetworks" {
  type = bool
  description = "Whether to automatically create subnetworks (default: false)"
  default = false
}

variable "mtu" {
  type = number
  description = "Maximum Transmission Unit (MTU) for the network"
  default = 1460
}

variable "delete_default_routes_on_create" {
  type = bool
  description = "Whether to delete default routes on network creation"
  default = false
}

################### Subnet Variables #####################333
variable "subnetwork_name" {
  type = string
  description = "Name of the private subnetwork"
  default = "private"
}

variable "ip_cidr_range" {
  type = string
  description = "CIDR range for the primary IP address range"
  default = "10.0.0.0/18"
}

variable "region" {
  type = string
  description = "Region where the subnetwork resides"
  default = "us-central1"
}

variable "network_id" {
  type = string
  description = "The ID of the existing VPC network"
}

variable "private_ip_google_access" {
  type = bool
  description = "Allow access to Google services from private IP addresses"
  default = true
}

variable "k8s_pod_range" {
  type = string
  description = "CIDR range for the Kubernetes pod network"
  default = "10.48.0.0/14"
}

variable "k8s_service_range" {
  type = string
  description = "CIDR range for the Kubernetes service network"
  default = "10.52.0.0/20"
}



#################################################################333

