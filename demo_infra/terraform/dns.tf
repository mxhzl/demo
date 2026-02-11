resource "porkbun_dns_record" "mxhzldotcom" {
  domain   = "mxhzl.com"
  type     = "A"
  content  = digitalocean_reserved_ip.demo.ip_address
  priority = 0
}

resource "porkbun_dns_record" "ipv6-mxhzldotcom" {
  domain   = "mxhzl.com"
  type     = "AAAA"
  content  = digitalocean_droplet.demo.ipv6_address
  priority = 0
}

resource "porkbun_dns_record" "www" {
  domain   = "mxhzl.com"
  name     = "www"
  type     = "A"
  content  = digitalocean_reserved_ip.demo.ip_address
  priority = 0
}

resource "porkbun_dns_record" "ipv6-www" {
  domain   = "mxhzl.com"
  name     = "www"
  type     = "AAAA"
  content  = digitalocean_droplet.demo.ipv6_address
  priority = 0
}