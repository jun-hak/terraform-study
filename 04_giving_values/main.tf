terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

locals {
  base_path = "${path.module}/configs/${local.upper_case}"
  envrionment = "prd" #dev, stg, prd
  upper_case = upper(local.envrionment)
}


resource "local_file" "example1" { 
    filename = "${local.base_path}/${var.file_name-1}.txt"
    content = "this is demo content - 1"
    count=var.count_num
}