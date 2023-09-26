
variable "terraform_tmc_version" {
  type        = string
  description = "Terraform TMC Provider Version"
  default = "1.2.3"
}

variable "tmc_endpoint" {
  type        = string
  description = "TMC endpoint URL"
  default: "tanzutmm.tmc.cloud.vmware.com"
}

variable "vmw_cloud_token_secret_placeholder" {
  type        = string
  description = "Reminder to create an Aria assembler secret for vmw_cloud_token - this var is an unused placeholder"
  default     = "unused_placeholder"
}

variable "azure_credential_name" {
  type        = string
  description = "TMC Credential Name for Azure Account"
  default     = "afewell-azure"
}

variable "azure_subscription_id_secret_placeholder" {
  type        = string
  description = "Reminder to create an Aria assembler secret for azure_subscription_id - this var is an unused placeholder"
  default     = "unused_placeholder"
}

variable "azure_resource_group" {
  type        = string
  description = "Azure Resource Group"
  default     = "genaissance"
}

variable "cluster_name" {
  type        = string
  description = "Enter a name for the cluster that will be created"
  default     = "my-new-aks-cluster"
}

variable "cluster_group_name" {
  type        = string
  description = "Enter the name for the cluster group the created cluster will be associated to."
  default     = "genaissance"
}

variable "cluster_description" {
  type        = string
  description = "Enter a description for this cluster"
  default     = "Enter a description for this cluster"
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
  default     = "westus2"
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
  default     = "Standard_D4_v5"
}

variable "nodepool_1_node_disk_size_gb" {
  type        = number
  description = "OS Disk Size in GB to be used to specify the disk size for every machine in the nodepool. If you specify 0, it will apply the default osDisk size according to the vmSize specified"
  default     = 150
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