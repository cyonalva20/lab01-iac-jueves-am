terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

resource "docker_network" "frontend_net" {
  name = "frontend-net-${terraform.workspace}"
}

resource "docker_network" "backend_net" {
  name = "backend-net-${terraform.workspace}"
}