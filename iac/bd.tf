resource "docker_container" "db" {
  name  = "db-${terraform.workspace}"
  image = "lab/db"
  
  env = [
    "POSTGRES_PASSWORD=password123"
  ]
  ports {
    internal = 5432
    external = var.db_port[terraform.workspace]
  }
}