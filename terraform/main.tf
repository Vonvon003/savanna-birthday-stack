terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = true
}

resource "docker_container" "savanna_web" {
  name  = "savanna_web_terraform"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.external_port
  }

  volumes {
    host_path      = var.site_path
    container_path = "/usr/share/nginx/html"
    read_only      = true
  }
}
