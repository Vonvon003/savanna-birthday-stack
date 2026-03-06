output "site_url" {
  description = "Local URL for the Savanna Terraform-managed site"
  value       = "http://localhost:${var.external_port}"
}

output "container_name" {
  description = "Terraform-managed Docker container name"
  value       = docker_container.savanna_web.name
}
