resource "azurerm_resource_group" "resource_group" {
  name     = format("redisgeek%s", random_string.resource_group_name.result)
  location = random_shuffle.regions-with-az.result[0]
}