variable "name" {
  type = string
}

variable "rule_items" {
  default = []
  type = list(object({
    action        = string
    description   = string
    src_ip_ranges = list(string)
    priority      = number
  }))
}
