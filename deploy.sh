export TERRAGOAT_RESOURCE_GROUP="dg-terragoat-rg"
export TERRAGOAT_STATE_STORAGE_ACCOUNT="dgstgtgt"
export TERRAGOAT_STATE_CONTAINER="dgcontainer"
export TF_VAR_environment="sandbox"
export TF_VAR_region="westeurope"

# Create resource group
az group create --location $TF_VAR_region --name $TERRAGOAT_RESOURCE_GROUP

# Create storage account
az storage account create --name $TERRAGOAT_STATE_STORAGE_ACCOUNT --resource-group $TERRAGOAT_RESOURCE_GROUP --location $TF_VAR_region --sku Standard_LRS --kind StorageV2 --https-only true --encryption-services blob

# Get storage account key
ACCOUNT_KEY=$(az storage account keys list --resource-group $TERRAGOAT_RESOURCE_GROUP --account-name $TERRAGOAT_STATE_STORAGE_ACCOUNT --query [0].value -o tsv)

# Create blob container
az storage container create --name $TERRAGOAT_STATE_CONTAINER --account-name $TERRAGOAT_STATE_STORAGE_ACCOUNT --account-key $ACCOUNT_KEY


cd terraform/
terraform init -backend-config="resource_group_name=$TERRAGOAT_RESOURCE_GROUP" \
    -backend-config "storage_account_name=$TERRAGOAT_STATE_STORAGE_ACCOUNT" \
    -backend-config="container_name=$TERRAGOAT_STATE_CONTAINER" \
    -backend-config "key=$TF_VAR_environment.terraform.tfstate"

terraform apply