
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}



provider "docker" {
  host = "unix:///var/run/docker.sock"
}


resource "docker_image" "nginx" {
  name = var.docker_image
}

# Create a container
resource "docker_container" "foo" {
  image = docker_image.nginx.image_id
  name  = var.container_name

  ports {
    internal = 80
    external = 80
  }
}