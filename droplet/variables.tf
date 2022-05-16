variable client_name {
    type = string
    description = "client name"
}

variable cluster_name {
    type = string
    description = "cluster name"
}

variable env {
    type = string
    description = "environment"
}

variable ssh_bamboo {
    type = string
    description = "bamboo ssh key"
}

variable ssh_user {
    type = string
    description = "user ssh key"
}

variable dp_count {
    type = number
    description = "droplet count"
}

variable dp_image {
    type = string
    description = "droplet image"
}

variable dp_region {
    type = string
    description = "droplet region"
}

variable dp_size {
    type = string
    description = "droplet size"
}