locals {
  data_lake_bucket = "final_project_data_lake"
}

variable "project" {
  description = "Your GCP Project ID"
}

variable "region" {
  description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
  default = "asia-southeast2"
  type = string
}

variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "final_project"
}

variable "BQ_TABLE" {
  description = "BigQuery table that raw data (from GCS) will be written to in BQ_DATASET"
  type = string
  default = "final_project_table"
}

variable "BQ_TABLE_2" {
  description = "BigQuery table that raw data (from kafka producer) will be written to in BQ_DATASET"
  type = string
  default = "final_project_kafka_table"
}