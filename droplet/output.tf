output "dp_id" {
    value = digitalocean_droplet.dps.*.id
}

output "dp_ip" {
    value = digitalocean_droplet.dps.*.ipv4_address
}

output "dp_name" {
    value = digitalocean_droplet.dps.*.name
}

output "dp_urn" {
    value = digitalocean_droplet.dps[*].urn
}