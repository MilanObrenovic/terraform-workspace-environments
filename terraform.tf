terraform {
	backend "s3" {
		bucket = "terraform-remote-backend-s3-2"
		key    = "terraform.tfstate"
		region = "eu-central-1"
	}
}
