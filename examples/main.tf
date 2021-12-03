terraform {
  required_providers {
    hashicups = {
      version = "0.2"
      source  = "hashicorp.com/edu/hashicups"
    }
  }
}

provider "hashicups" {
  username = "education"
  password = "test123"
}

module "psl" {
  source = "./coffee"

  coffee_name = "Packer Spiced Latte"
}

output "psl" {
  value = module.psl.all_coffees
}

data "hashicups_order" "order" {
  id = 1
}

output "order" {
  value = data.hashicups_order.order
}
