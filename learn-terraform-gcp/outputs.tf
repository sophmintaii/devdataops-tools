output "gcs_bucket_name" {
  description = "name of the GCS bucket"
  value       = google_storage_bucket.gcs_bucket.name
}

output "gcs_bucket_url" {
  description = "gs:// url of the GCS bucket"
  value       = google_storage_bucket.gcs_bucket.url
}

output "bigquery_dataset_id" {
  description = "ID of the BQ dataset"
  value       = google_bigquery_dataset.gbq_dataset.id
}

output "vm_name" {
  description = "name of the VM"
  value       = google_compute_instance.vm.name
}

output "vm_internal_ip" {
  description = "internal IP of the VM"
  value       = google_compute_instance.vm.network_interface[0].network_ip
}

output "vm_external_ip" {
  description = "(ephemeral) IP of the VM"
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}
