resource "proxmox_vm_qemu" "vm_clone" {
  count = 2
  agent = 0
  vmid        = 200 + count.index
  name        = "ubuntu-24-clone-${count.index}"
  target_node = "monlabolinux"
  clone       = "Ubuntu-24-tpl" # Name of your existing template
  full_clone  = true
  scsihw      = "virtio-scsi-single"
  boot        = "order=scsi0"

  # Basic Hardware Specs
  cpu {
    cores = 2
  }
  memory = 4096

  # Network Configuration
  network {
    id     = 0
    model  = "virtio"
    bridge = "vmbr0"
  }

  # Disk configurations
  disk {
    slot    = "scsi0"
    size    = "30G"
    type    = "disk"
    storage = "self-storage"
  }
}
