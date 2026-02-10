resource "porkbun_dns_record" "demo" {
  domain   = "mxhzl.com"
  name     = "demo"
  type     = "A"
  content  = digitalocean_reserved_ip.demo.ip_address
  priority = 0
}

resource "porkbun_dns_record" "ipv6-demo" {
  domain   = "mxhzl.com"
  name     = "demo"
  type     = "AAAA"
  content  = digitalocean_droplet.demo.ipv6_address
  priority = 0
}
