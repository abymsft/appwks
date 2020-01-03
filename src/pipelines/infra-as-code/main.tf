resource "azurerm_resource_group" "example" {
  name     = "api-rg-pro"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "example" {
  name                = "${var.asp_config["app_service_plan_name"]}"
  location            = "${var.resource_group_name}"
  resource_group_name = "${var.resource_group_name}"
  kind                = "${var.asp_config["kind"]}"
  reserved            = true

  sku {
    tier     = "${var.asp_config["tier"]}"
    size     = "${var.asp_config["size"]}"
    capacity = "${var.asp_config["capacity"]}"
  }
}