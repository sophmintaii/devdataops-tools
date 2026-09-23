terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }

  backend "gcs" {
    bucket = "devdataops-hw-tfstate"
    prefix = "hw1/state"
  }
}

provider "google" {
  project = "devdataops-hw"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "gcs_bucket" {
  name                        = "devdataops-hw-bucket"
  location                    = "us-central1"
  force_destroy               = true
  uniform_bucket_level_access = true
}

resource "google_bigquery_dataset" "gbq_dataset" {
  dataset_id                 = "devdataops_hw_dataset"
  location                   = "us-central1"
  delete_contents_on_destroy = true
}

resource "google_compute_instance" "vm" {
  name         = "devdataops-hw-vm"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
    access_config {
      # ephemeral
    }
  }

}


