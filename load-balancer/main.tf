terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_certificate" "cert" {
    name    = "${var.env}.${var.cluster_name}.${var.dns}"
    type    = "lets_encrypt"
    domains = ["${var.cluster_name}.${var.dns}"]
}

resource "digitalocean_loadbalancer" "lb" {
    name = "lb-${var.cluster_name}-${var.client_name}-${var.env}"
    region = var.lb_region
    droplet_ids = var.dp_id

    forwarding_rule {

        entry_port     = var.lb_entry_port
        entry_protocol = var.lb_entry_protocol

        target_port     = var.lb_target_port
        target_protocol = var.lb_target_protocol

        certificate_name = digitalocean_certificate.cert.name
    }

    healthcheck {
        port     = var.lb_health_port
        protocol = var.lb_health_protocol
        path = var.lb_health_path
    }

}