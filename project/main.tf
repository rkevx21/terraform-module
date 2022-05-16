terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_project_resources" "proj" {
  project = var.proj_id
  resources = [var.lb_urn]
  
}

resource "digitalocean_project_resources" "dp-proj" {
  project = var.proj_id
  resources = var.dp_urn
  
}

