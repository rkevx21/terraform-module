terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_record" "dns-lb" {
    domain = var.dns
    type   = "A"
    name   = "${var.cluster_name}"
    value  = var.lb_ip
}

resource "digitalocean_record" "dns-dp" {
  count  = "${var.dp_count}"
  domain = var.dns
  type   = "A"
  name   = "${element(var.dp_name, count.index)}"
  value  = "${element(var.dp_ip, count.index)}"
}