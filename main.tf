resource "aws_ec2_managed_prefix_list" "this" {
  name           = var.name
  address_family = var.address_family
  max_entries    = var.max_entries

  dynamic "entry" {
    for_each = var.entries
    content {
      cidr        = entry.key
      description = entry.value
    }
  }

  tags = var.tags
}
