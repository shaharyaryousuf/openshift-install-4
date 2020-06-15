terraform {
  required_version = ">= 0.12"
}

provider "esxi" {
  esxi_hostname = var.esxi_hostname
  esxi_hostport = var.esxi_hostport
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password
}

resource "esxi_guest" "openshift-bootstrap" {
      count                  = 1
      boot_disk_size         = 200
      disk_store             = var.disk_store
      guest_name             = var.bootstrap_hostname[count.index]
      guestos                = var.guestos
      memsize                = "5000"
      numvcpus               = "4"
      power                  = "on"
      #ovf_source             = var.osimage

      guestinfo = {
          #"coreos.config.data" = var.bootstrap_ignition
          "coreos.config.data.encoding" = "base64"
      }

      network_interfaces {
          mac_address     = var.bootstrap_macaddress[count.index]
          virtual_network = var.virtual_network
          nic_type = var.nic_type
      }
}

resource "esxi_guest" "openshift-master" {
      count                  = 3
      boot_disk_size         = 400
      disk_store             = var.disk_store
      guest_name             = var.master_hostname[count.index]
      guestos                = var.guestos
      memsize                = "16000"
      numvcpus               = "4"
      power                  = "on"
      #ovf_source             = var.osimage
      
      guestinfo = {
          #"coreos.config.data" = var.master_ignition
          "coreos.config.data.encoding" = "base64"
      }
      
      network_interfaces {
          mac_address     = var.master_macaddress[count.index]
          virtual_network = var.virtual_network
      }
}

resource "esxi_guest" "openshift-worker" {
      count                  = 2
      boot_disk_size         = 500
      disk_store             = var.disk_store
      guest_name             = var.worker_hostname[count.index]
      guestos                = var.guestos
      memsize                = "10000"
      numvcpus               = "2"
      power                  = "on"
      #ovf_source             = var.osimage
      
      guestinfo = {
          #"coreos.config.data" = var.worker_ignition
          "coreos.config.data.encoding" = "base64"
      }
      
      network_interfaces {
          mac_address     = var.worker_macaddress[count.index]
          virtual_network = var.virtual_network
      }
}
