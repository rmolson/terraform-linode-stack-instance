module instance {
  source          = "git@github.com:P3BKAC/terraform-linode-instance.git?ref=1.0.0"
  authorized_keys = var.authorized_keys
  name            = var.name
  type            = var.instance_type
  image           = var.image
  region          = var.region
  root_password   = var.root_password
}

module dns {
  source      = "git@github.com:P3BKAC/terraform-linode-dns_record.git?ref=1.0.0"
  domain_id   = var.domainId
  name        = var.name
  record_type = "A"
  target      = module.instance.instance.ip_address
}

