provider "aws" {
  version = "~> 2.22.0"

  region              = "${region}"
  allowed_account_ids = ["${account_id}"]
}
