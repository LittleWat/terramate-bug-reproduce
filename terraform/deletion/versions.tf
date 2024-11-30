terraform {
  required_version = ">= 1.0" # This is a placeholder version for TFLint
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.1"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "1.58.0"
    }
    dns = {
      source  = "hashicorp/dns"
      version = "3.4.2"
    }
  }
}
