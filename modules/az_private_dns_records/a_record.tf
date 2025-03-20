resource "azurerm_private_dns_a_record" "a_record" {
  count               = var.record_type == "A" ? 1 : 0
  name                = var.record_name
  zone_name           = var.zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl

  records = var.records

  tags = var.tags_records
  lifecycle {
    ignore_changes = all
  }
}