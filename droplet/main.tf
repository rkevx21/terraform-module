terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

data "digitalocean_ssh_key" "ssh-bamboo" {
    name = var.ssh_bamboo
}

data "digitalocean_ssh_key" "ssh-user" {
    name = var.ssh_user
}

resource "digitalocean_droplet" "dps" {
    count  = var.dp_count
    image  = var.dp_image
    name   = "${var.cluster_name}-${var.client_name}-${var.env}-0${count.index +1}"

    region = var.dp_region
    size   = var.dp_size
    tags   = [ "${var.cluster_name}-${var.client_name}" ]

    user_data = file("bootstrap.sh")

    ssh_keys = [
        data.digitalocean_ssh_key.ssh-bamboo.id,
        data.digitalocean_ssh_key.ssh-user.id
    ]
}