job "demo-pihole-server" {
  datacenters = ["dc1"]
  group "demo-pihole" {
    task "demo-pihole-server" {
      driver = "docker"

      config {
        image = "pihole/pihole:latest"
        dns_servers = [
          "1.1.1.1"
        ]
      }

	env {
        TZ = "Canada/Eastern"
      }

	resources {
        network {
          mbits = 100
          port "tcp" {
            static = "53"
          }
          port "http" {
            static = "80"
          }
          port "https" {
            static = "443"
          }
        }
      }
    }
  }
}