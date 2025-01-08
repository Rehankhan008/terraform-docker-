terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

provider "docker" {
  host     = "ssh://mdevpc-194\user@localhost:22"   # replace with your username and remote host IP
  ssh_opts = [
    "-o", "StrictHostKeyChecking=no", 
    "-o", "UserKnownHostsFile=/dev/null"
  ]
}

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
