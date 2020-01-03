variable "resource_group" {
  description = "Resource group where resources are created"
}

variable "location" {
  description = "Azure region"
}

variable "asp_config" {
  description = <<EOF
App Service plan configuration map

asp_config = {

  app_service_plan_name = "awaazewdmlit-dnr-asp0-dev1" # Name of the APP service plan

  kind = "Linux" # The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux and FunctionApp (for a Consumption Plan). Defaults to Windows. Changing this forces a new resource to be created.

  tier = "PremiumV2" # Specifies the plan's pricing tier.

  size = "P3v2" # Specifies the plan's instance size.

}
  
EOF

  type = "map"

}