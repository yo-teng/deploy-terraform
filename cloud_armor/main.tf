resource "google_compute_security_policy" "cloud_armor" {
  name = var.name
  dynamic "rule" {
    for_each = var.rule_items
    content {
      action      = rule.value.action
      description = rule.value.description
      match {
        config {
          src_ip_ranges = rule.value.src_ip_ranges
        }
        versioned_expr = "SRC_IPS_V1"
      }
      priority = rule.value.priority
    }
  }
  type = "CLOUD_ARMOR"
}
