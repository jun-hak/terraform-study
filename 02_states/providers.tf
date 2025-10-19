terraform {
    backend "local" {
        path = "/Users/jun/Documents/GitHub/terraform-study/state-file/terraform.tfstate"
    }

  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}