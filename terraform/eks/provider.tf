provider "aws" {
  region = var.region

  default_tags {
    tags = {
      managedBy = "terraform"
      createdAt  = "20231121"
    }
  }
}
