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
  envrionment = "dev" #dev, stg, prd
  upper_case = upper(local.envrionment)
}

resource "local_file" "example1" { 
    filename = "${local.base_path}/${var.file_name-1}.txt"
    content = "this is demo content - 1"
    count=var.count_num
}

resource "local_file" "example2" { 
    filename = "${path.module}/${var.file_name-2}.txt"
    content = "this is demo content - 2"
}

resource "local_file" "example3" { 
    filename = "${path.module}/${var.file_name-3}.txt"
    content = "this is demo content - 3"
}

resource "local_file" "service_configs" { 
    filename = "${local.base_path}/server.sh"
    content = <<EOF
    environment = ${local.envrionment}
    port = 3000
    EOF
}