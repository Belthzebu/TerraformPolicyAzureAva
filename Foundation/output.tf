/*
output "assignment_id" {
    value = azurerm_subscription_policy_assignment.auditvms.id
}
*/

output "assignment_id" {
    value = azurerm_policy_set_definition.HiRiskProdTerraform.id
}