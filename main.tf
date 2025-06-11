terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "random" {}

resource "random_pet" "petname" {
  prefix    = "MR"
  separator = "."
  length    = 1
}

resource "local_file" "my_animal" {
  filename = "pets.txt"
  content  = "I love my cat"
  
  lifecycle {
    create_before_destroy = true
  }
}
