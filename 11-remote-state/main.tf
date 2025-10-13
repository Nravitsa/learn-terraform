
resource "null_resource" "test" {}

terraform {
  backend "azurerm" {
    use_cli              = true                                    # Can also be set via `ARM_USE_CLI` environment variable.
    subscription_id      = "838d8d5b-1157-4504-a71d-1ef48775bbe3"  # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable. Azure CLI will fallback to use the connected subscription ID if not supplied.
    resource_group_name  = "project-ecom"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "nravitsademoo1"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "roboshop-state-files"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "test.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}


export ARM_SUBSCRIPTION_ID="301ed75f-fd10-4107-9536-f4b06dabe157"
export ARM_TENANT_ID="azure-cli-2025-10-13-01-44-49"
export ARM_CLIENT_ID="vdj8Q~l2a~QKFyQolKw3CTd.lB-4FDUrAHWJrarU"
export ARM_CLIENT_SECRET="dfbc04b9-9927-406a-ba3c-4799083e9ed8"

