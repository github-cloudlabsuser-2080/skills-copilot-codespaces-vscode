# Variables
$resourceGroupName = "example-resources"
$location = "East US"
$storageAccountName = "examplestoraccount"
$skuName = "Standard_LRS" # Locally redundant storage
$kind = "StorageV2"

# Login to Azure (Uncomment the line below if not already logged in)
# Connect-AzAccount

# Create a Resource Group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a Storage Account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName $skuName `
                     -Kind $kind `
                     -EnableHttpsTrafficOnly $true

Write-Host "Storage account $storageAccountName created successfully."