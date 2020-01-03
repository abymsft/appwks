output "name" {
  description = "The Name of the App Service Plan component."
  value = "${azurerm_app_service_plan.hosting.name}"
}

output "id" {
  description = "The ID of the App Service Plan component."
  value = "${azurerm_app_service_plan.hosting.id}"
}

output "maximum_number_of_workers" {
  description = "The maximum number of workers supported with the App Service Plan's sku."
  value = "${azurerm_app_service_plan.hosting.maximum_number_of_workers}"
}