environment       = "dev"
containers = [
    { 
        name            = "php-demo", 
        target_node     = "pmoxchaac", 
        storage         = "local-lvm",
        storage_size    = "32G",
        full_clone      = true
        template_name   = "PROXMOX:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
        network_bridge  = "vmbr0"
        memory          = 8192
        cores           = 4
        tags            = "tofu"
        unprivileged    = true
        ip              = "172.16.2.183/24"
        vmid            = 710
        gw              = "172.16.2.1"
    }
]
default_password  = "BasicLXCContainer"
public_key_encryption = "ssh-ed25519"
public_key = "AAAAC3NzaC1lZDI1NTE5AAAAIFxjDQ17XWPA7uYHdp5VSaUaYfaZFFoSmM5pD52hrn2T"
dns = "172.16.25.11"
proxmox_host = "https://pmoxchaac.imta.mx:8006/api2/json"
