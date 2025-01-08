terraform {
  required_providers {
    docker = {
      source = "calxus/docker"
      version = "3.0.0"
    }
  }
}

provider "docker" {
  # Configuration options
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  name  = "nginx-container"
  image = docker_image.nginx.latest
  ports {
    internal = 80
    external = 8080
  }
}
