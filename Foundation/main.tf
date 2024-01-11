terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>3.4.0"
        }
    }
    required_version = "= 1.1.9"
    backend "azurerm" {}
}

provider "azurerm" {
    features {}
}

resource "azurerm_policy_set_definition" "HiRiskProdTerraform" {
  name         = "IveGrpEU-Definition-Hig-Prod"
  policy_type  = "Custom"
  display_name = "IveGrpEU-Definition-Hig-Prod"
  management_group_id = "/providers/Microsoft.Management/managementGroups/IveGrpEU-High-Risk-Prod"

    parameters = <<PARAMETERS
    {
        "effectValue": {
                "type": "String",
                "metadata": {
                        "displayName": "Effect",
                        "description": "The effect determines what happens when the policy rule is evaluated to match"
                },
                "allowedValues": [
                        "Audit",
                        "Deny",
                        "Disabled"
                ],
                "defaultValue": "Audit"
        },
        "approvedExtensionsList": {
                "type": "Array",
                "metadata": {
                        "description": "The list of approved extension types that can be installed. Example: AzureDiskEncryption",
                        "displayName": "Approved extensions"
                },
				"defaultValue": [""]
        }
    }
    PARAMETERS

	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/c75248c1-ea1d-4a9c-8fc9-29a6aabd5da8"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e2c1c086-2d84-4019-bff3-c44ccd95113c"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/8c122334-9d20-4eb8-89ea-ac9a705b74ae"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/9d0b6ea4-93e2-4578-bf2f-6bb17d22b4bc"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/496223c3-ad65-4ecd-878a-bae78737e9ed"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/7238174a-fd10-4ef0-817e-fc820a951d73"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/7008174a-fd10-4ef0-817e-fc820a951d73"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/6d555dd1-86f2-4f1c-8ed7-5abae7c6cbab"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/f9d614c5-c173-4d56-95a7-b4437057d193"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/f0e6e85b-9b9f-4a4b-b67b-f730d42f1b0b"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a4af4a39-4135-47fb-b175-47fbdf85311d"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/22bee202-a82f-4305-9a2a-6d7f44d4dedb"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/0b60c0b2-2dc2-4e1c-b5c9-abbed971de53"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/152b15f7-8e1f-4c1f-ab71-8c010ba5dbc0"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/98728c90-32c7-4049-8429-847dc0f4fe37"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/1e66c121-a66a-4b1f-9b83-0fd99bf0fc2d"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/1a5b4dca-0b6f-4cf5-907c-56316bc1bf3d"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/fbb99e8e-e444-4da0-9ff1-75c92f5a85b2"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/eb6f77b9-bd53-4e35-a23d-7f65d5f0e446"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/eb6f77b9-bd53-4e35-a23d-7f65d5f0e43d"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/eb6f77b9-bd53-4e35-a23d-7f65d5f0e8f3"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/17k78e20-9358-41c9-923c-fb736d382a12"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/1f314764-cb73-4fc9-b863-8eca98ac36e9"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/32e6bbec-16b6-44c2-be37-c5b672d103cf"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/5345bb39-67dc-4960-a1bf-427e16b9a0bd"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e802a67a-daf5-4436-9ea6-f6d821dd0c5d"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/d158790f-bfb0-486c-8631-2dc6b4e8e6af"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/eb6f77b9-bd53-4e35-a23d-7f65d5f0e442"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a8793640-60f7-487c-b5c3-1d37215905c4"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/89099bee-89e0-4b26-a5f4-165451757743"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/404c3081-a854-4457-ae30-26a93ef643f9"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a4fe33eb-e377-4efb-ab31-0784311bc499"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a3a6ea0c-e018-4933-9ef0-5aaa1501449b"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/037eea7a-bd0a-46c5-9a66-03aea78705d3"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/399b2637-a50f-4f95-96f8-3a145476eb15"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/4d24b6d4-5e53-4a4f-a7f4-618fa573ee4b"
	}
    policy_definition_reference {
        policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/c0e996f8-39cf-4af9-9f45-83fbde810432"
        parameter_values     = <<VALUE
        {
            "approvedExtensions": {"value": "[parameters('approvedExtensionsList')]"},
            "effect": {"value": "[parameters('effectValue')]"}
        }
        VALUE
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/862e97cf-49fc-4a5c-9de4-40d4e2e7c8eb"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/797b37f7-06b8-444c-b1ad-fc62867f335a"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Management/managementGroups/IveGrpEU/providers/Microsoft.Authorization/policyDefinitions/Deny-PublicEndpoint-MariaDB"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/1b8ca024-1d5c-4dec-8995-b1a932b41780"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/3375856c-3824-4e0e-ae6a-79e011dd4c47"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/3c14b034-bcb6-4905-94e7-5b8e98a47b65"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/9dfea752-dd46-4766-aed1-c355fa93fb91"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/b52376f7-9612-48a1-81cd-1ffe4b61032c"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/d9844e8a-1437-4aeb-a32c-0c992f056095"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/dfbd9a64-6114-48de-a47d-90574dc2e489"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/fdccbe47-f3e3-4213-ad5d-ea459b2fa077"
	}
	policy_definition_reference {
		policy_definition_id = "/providers/Microsoft.Management/managementGroups/IveGrpEU/providers/Microsoft.Authorization/policyDefinitions/Deny-AppServiceApiApp-http"
	}
}

resource "azurerm_management_group_policy_assignment" "example-assign" {
  name                 = "IveGrpEU-Assign-Hig-Prod"
  policy_definition_id = azurerm_policy_set_definition.HiRiskProdTerraform.id
  management_group_id  = "/providers/Microsoft.Management/managementGroups/IveGrpEU-High-Risk-Prod"
  enforce = false

  parameters = <<PARAMETERS
        {
            "approvedExtensionsList": {
                "value": ["NetworkWatcherAgentLinux", "VMAccessForLinux", "MicrosoftMonitoringAgent", "VMAccessAgent", "OmsAgentForLinux", "BGInfo", "SqlIaaSAgent", "AzureBackupWindowsWorkload", "InsightAgentLinux", "MDE.Linux", "InsightAgentWindows", "MDE.Windows", "NetworkWatcherAgentWindows", "IaaSDiagnostics"]
            },
	    	"effectValue": {
                "value": "Audit"
	    	}
        }
    PARAMETERS
}