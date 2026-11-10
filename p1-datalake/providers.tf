terraform {
  required_version = ">= 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  # Toda etiqueta aquí se aplica sola a cada recurso que crees
  default_tags {
    tags = {
      proyecto       = "p1-datalake"
      gestionado_por = "terraform"
      owner          = "santi"
    }
  }
}