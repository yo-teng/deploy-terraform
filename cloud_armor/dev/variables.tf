variable "deny_rule" {
  default = {
    action = "deny(403)"
    description = "default rule"
    src_ip_ranges = ["*"]
    priority = 2147483647
  }

  type = object({
    action = string
    description = string
    src_ip_ranges = list(string)
    priority = number

  })
}
