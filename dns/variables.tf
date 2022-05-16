variable dns {
    type = string
    description = "dns"
}

variable cluster_name {
    type = string
    description = "instance type"
}

variable env {
    type = string
    description = "environment"
}

variable dp_count {
    type = number
    description = "droplet count"
}

variable dp_name {
    description = "droplet ip"
}

variable dp_ip {
    description = "droplet ip"
}

variable lb_ip {
    type = string
    description = "load balancer ip"
}
