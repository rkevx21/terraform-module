variable dns {
    type = string
    description = "dns"
}

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

variable lb_region {
    type = string
    description = "load balancer region"
}

variable lb_entry_port {
    type = number
    description = "forwarding rule entry_port"
}

variable lb_entry_protocol {
    type = string
    description = "forwarding rule entry_protocol"
}

variable lb_target_port {
    type = number
    description = "forwarding rule target_port"
}

variable lb_target_protocol {
    type = string
    description = "forwarding rule target_protocol"
}

variable lb_health_port {
    type = number
    description = "health check port"
}

variable lb_health_protocol {
    type = string
    description = "health check protocol"
}

variable lb_health_path {
    type = string
    description = "health check path"
}

variable dp_id {
    description = "droplet id"
}
