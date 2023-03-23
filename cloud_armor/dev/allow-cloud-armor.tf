module "allow-cloud-armor-dev" {
    source = "../"
    name = "allow-cloud-armor-dev"
    deny_rule = var.deny_rule
    rule_items = [
        var.deny_rule,
        {
            action = "allow"
            description = "describe 1"
            src_ip_ranges = ["127.0.0.1"]
            priority = 1
        },
        {
            action = "allow"
            description = "describe 2"
            src_ip_ranges = ["127.0.0.1", "localhost"]
            priority = 2
        }
    ]
}
