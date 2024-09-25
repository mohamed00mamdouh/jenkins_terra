variable "docker_image" {
  description = "The Docker image to use"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "nginx_container"
}

