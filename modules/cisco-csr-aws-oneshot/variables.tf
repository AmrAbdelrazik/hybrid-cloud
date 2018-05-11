variable "rg_name" {
  description = "Name of the resource group this VPN router will be launched into."
  default     = ""
}

variable "vnet_name" {
  description = "Existing VNet Name to install Cisco CSR on"
  default     = ""
}

variable "azure_subnet_name" {
  description = "selected subnet chosen for Cisco CSR on an existing subnet"
  default     = ""
}

variable "azure_instance_disk_size" {
 description = "Default size of the root disk (GB)"
 default = "32"
}

variable "azure_instance_type" {
  description = "Cisco CSR Instance type. Accepts c4.<types> only"
  default = "Standard_D2_v2"
}

variable "azure_region" {
  description = "Azure region to launch servers."
  default     = "West US"
}

variable "vpc_id" {
  description = "Existing VPC to install Cisco CSR on"
  default     = ""
}

variable "aws_instance_type" {
  description = "Cisco CSR Instance type. Accepts c4.<types> only"
  default = "c4.large"
}

variable "aws_region" {
  default = ""
}

variable "aws_profile" {
  default = ""
}

variable "private_ip_address_suffix" {
  description = "Cisco CSR reserved ip address within existing VNet/VPC. i.e X.X.250.250"
  default = "250.250"
}

variable "subnet_suffix_cidrblock" {
  description = "Cisco CSR reserved subnet address cidr block within existing VNet/VPC. i.e X.X.250.240/28"
  default = "250.240/28"
}

variable "destination_cidr" {
  description = "The CIDR block to route traffic too for the other Cisco CSR Router"
  default = ""
}

variable "destination_csr_public_ip" {
  description = "Public IP Address for destination Cisco CSR"
  default     = ""
}

variable "terraform_dcos_destination_provider" {
  description = "The CIDR block to route traffic too for the other Cisco CSR Router"
  default = "aws"
}


#RENAME TO eip_id for the top level module
variable "public_ip_local_site" { 
  description = "The elastic ip address of the local site. If none is provided, one will be created."
  default     = ""
}

#RENAME TO eip_id for the top level module
variable "public_ip_remote_site" {
  description = "The public ip address of the remote site."
  default     = "203.0.113.1"
}

#RECONSIDER Suffix behavior for the top level module
variable "private_ip_remote_site" {
  description = "The private ip address of the remote site."
  default     = "10.32.250.250"
}

variable "remote_pre_share_key" {
  default = "cisco123"
}

variable "local_pre_share_key" {
  default = "cisco123"
}

variable "tunnel_ip_local_site" {
  default = "172.16.0.1"
}
variable "tunnel_ip_remote_site" {
  default = "172.16.0.2"
}
variable "local_hostname" {
  default = "CSR1"
}
variable "remote_hostname" {
  default = "CSR2"
}

variable "cisco_user" {
  description = "Default Linux User for login"
  default     = "ec2-user"
}

variable "cisco_password" {
  description = "Default linux Password for login"
  default     = "secureP@ssword"
}

variable "ssh_key_name" {
  description = "AWS Key Pair name for ssh"
  default     = ""
}

variable "subnet_id" {
  description = "selected subnet chosen for Cisco CSR on an existing subnet"
  default     = ""
}
