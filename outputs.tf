# outputs.tf
# Info pärast apply'd

output "config_file_path" {
  description = "Config faili asukoht"
  value       = local_file.config.filename
}

output "config_file_id" {
  description = "Faili hash"
  value       = local_file.config.id
}

output "summary" {
  description = "Deployment kokkuvõte"
  value = {
    app         = var.app_name
    environment = var.environment
    port        = var.port
    config_path = local_file.config.filename
  }
}