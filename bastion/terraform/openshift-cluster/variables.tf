variable "esxi_hostname" {
  default = "192.168.1.38"
}

variable "esxi_hostport" {
  default = "22"
}

variable "esxi_username" {
  default = "root"
}

variable "esxi_password" {
  default = "l1b3rty@123"
}

variable "disk_store" {
  default = "datastore1"
}

variable "virtual_network" {
  default = "ocp67"
}

variable "nic_type" {
  default = "vmxnet3"
}

variable "guestos" {
  default = "coreos-64"
}

#variable "osimage" {
 # default = "http://192.168.15.1:8080/images/rhcos-4.4.3-x86_64-vmware.x86_64.ova"
#}

variable "bootstrap_hostname" {
  type = list(string)
  default = ["ocp67-bootstrap"]
}

variable "bootstrap_macaddress" {
  type = list(string)
  default = ["00:1a:4a:16:01:20"]
}

#variable "bootstrap_ignition" {
 # default = "ewogICJpZ25pdGlvbiI6IHsKICAgICJjb25maWciOiB7CiAgICAgICJhcHBlbmQiOiBbCiAgICAgICAgewogICAgICAgICAgInNvdXJjZSI6ICJodHRwOi8vMTkyLjE2OC4xNS4xOjgwODAvaWduaXRpb24vYm9vdHN0cmFwLmlnbiIsIAogICAgICAgICAgInZlcmlmaWNhdGlvbiI6IHt9CiAgICAgICAgfQogICAgICBdCiAgICB9LAogICAgInRpbWVvdXRzIjoge30sCiAgICAidmVyc2lvbiI6ICIyLjEuMCIKICB9LAogICJuZXR3b3JrZCI6IHt9LAogICJwYXNzd2QiOiB7fSwKICAic3RvcmFnZSI6IHt9LAogICJzeXN0ZW1kIjoge30KfQo="
#}

variable "master_hostname" {
  type = list(string)
  default = ["ocp67-master-01","ocp67-master-1","ocp67-master-2"]
}

variable "master_macaddress" {
  type = list(string)
  default = ["00:1a:4a:16:01:29","00:1a:4a:16:01:2a","00:1a:4a:16:01:2b"]
}

#variable "master_ignition" {
 # default = "ewogICJpZ25pdGlvbiI6IHsKICAgICJjb25maWciOiB7CiAgICAgICJhcHBlbmQiOiBbCiAgICAgICAgewogICAgICAgICAgInNvdXJjZSI6ICJodHRwOi8vMTkyLjE2OC4xNS4xOjgwODAvaWduaXRpb24vbWFzdGVyLmlnbiIsIAogICAgICAgICAgInZlcmlmaWNhdGlvbiI6IHt9CiAgICAgICAgfQogICAgICBdCiAgICB9LAogICAgInRpbWVvdXRzIjoge30sCiAgICAidmVyc2lvbiI6ICIyLjEuMCIKICB9LAogICJuZXR3b3JrZCI6IHt9LAogICJwYXNzd2QiOiB7fSwKICAic3RvcmFnZSI6IHt9LAogICJzeXN0ZW1kIjoge30KfQo="
#}

#variable "worker_ignition" {
 # default = "ewogICJpZ25pdGlvbiI6IHsKICAgICJjb25maWciOiB7CiAgICAgICJhcHBlbmQiOiBbCiAgICAgICAgewogICAgICAgICAgInNvdXJjZSI6ICJodHRwOi8vMTkyLjE2OC4xNS4xOjgwODAvaWduaXRpb24vd29ya2VyLmlnbiIsIAogICAgICAgICAgInZlcmlmaWNhdGlvbiI6IHt9CiAgICAgICAgfQogICAgICBdCiAgICB9LAogICAgInRpbWVvdXRzIjoge30sCiAgICAidmVyc2lvbiI6ICIyLjEuMCIKICB9LAogICJuZXR3b3JrZCI6IHt9LAogICJwYXNzd2QiOiB7fSwKICAic3RvcmFnZSI6IHt9LAogICJzeXN0ZW1kIjoge30KfQo="
#}

variable "worker_hostname" {
  type = list(string)
  default = ["ocp67-worker-0","ocp67-worker-1"]
}

variable "worker_macaddress" {
  type = list(string)
  default = ["d0:67:e5:a1:34:3e","d0:67:e5:e4:87:1e"]
}


