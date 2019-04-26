provider "google" {
  version = "2.0.0"
  project = "${var.project}"
  region  = "${var.region}"
}

module "storage-bucket" {
  source  = "SweetOps/storage-bucket/google"
  version = "0.1.1"

  # Имена
  name = ["storage-bucket-test-235108", "storage-bucket-test2-235108"]
}

output storage-bucket_url {
  value = "${module.storage-bucket.url}"
}
