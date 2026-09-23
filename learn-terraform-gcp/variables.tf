variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "devdataops-hw"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-c"
}

variable "gcs_bucket_name" {
  description = "name of the GCS bucket"
  type        = string
  default     = "devdataops-hw-bucket"
}

variable "bq_dataset_id" {
  description = "ID of the BigQuery dataset"
  type        = string
  default     = "devdataops_hw_dataset"
}

variable "vm_name" {
  description = "name of the compute instance"
  type        = string
  default     = "devdataops-hw-vm"
}

variable "vm_machine_type" {
  description = "machine type of the compute instance"
  type        = string
  default     = "e2-micro"
}

variable "vm_image" {
  description = "boot image of the compute instance"
  type        = string
  default     = "debian-cloud/debian-12"
}
