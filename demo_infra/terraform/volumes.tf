resource "digitalocean_volume" "demo" {
  region                  = digitalocean_droplet.demo.region
  name                    = "demo"
  size                    = 10
  initial_filesystem_type = "ext4"
}

resource "digitalocean_volume_attachment" "demo" {
  droplet_id = digitalocean_droplet.demo.id
  volume_id  = digitalocean_volume.demo.id
}