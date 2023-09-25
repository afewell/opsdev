
variable "terraform_tmc_version" {
  type        = string
  description = "Terraform TMC Provider Version"
  default = "1.2.3"
}

variable "tmc_endpoint" {
  type        = string
  description = "TMC endpoint URL"
}

variable "vmw_cloud_api_token" {
  type        = string
  description = "TMC API Token"
  sensitive   = true
}

variable "azure_credential_name" {
  type        = string
  description = "TMC Credential Name for Azure Account"
}

variable "azure_subscription_id" {
  type        = string
  description = "TMC Credential Name for Azure Account"
  sensitive   = true
}

variable "azure_resource_group" {
  type        = string
  description = "Azure Resource Group"
}

variable "cluster_name" {
  type        = string
  description = "Enter a name for the cluster that will be created"
}

variable "cluster_group_name" {
  type        = string
  description = "Enter the name for the cluster group the created cluster will be associated to."
  default     = "default"
}

variable "cluster_description" {
  type        = string
  description = "Enter a description for this cluster"
}

variable "cluster_labels" {
  type        = map(string)
  description = "Enter any labels for this cluster"
  default     = {
    key1 = "value1"
    key2 = "value2"
  }  
}

variable "cluster_location" {
  type        = string
  description = "The Azure Region where the cluster will be deployed"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes Version for this cluster"
  default     = "1.26.6"
}

variable "nodepool_1_name" {
  type        = string
  description = "TMC Credential Name for Azure Account"
  default     = "systemnp"
}

variable "nodepool_1_count" {
  type        = number
  description = "Number of nodes, ignored if autoscaling"
  default     = 3
}

variable "nodepool_1_vm_size" {
  type        = string
  description = "VM size for nodepool 1 nodes"
}

variable "nodepool_1_node_disk_size_gb" {
  type        = number
  description = "OS Disk Size in GB to be used to specify the disk size for every machine in the nodepool. If you specify 0, it will apply the default osDisk size according to the vmSize specified"
  default     = 100
}

variable "nodepool_1_enable_auto_scaling" {
  type        = bool
  description = "Enable auto-scaling for this cluster (true or false)?"
  default     = true
}

variable "nodepool_1_max_node_count" {
  type        = number
  description = "Maximum number of nodes for this cluster"
  default     = 6
}

variable "nodepool_1_min_node_count" {
  type        = number
  description = "Minimum number of nodes for this cluster"
  default     = 1
}