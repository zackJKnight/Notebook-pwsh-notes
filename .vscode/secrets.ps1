# You don't have to use plaintext passwords in your scripts

Install-Module -Name Microsoft.PowerShell.SecretManagement -RequiredVersion 1.0.0  

Install-Module -Name Microsoft.PowerShell.SecretStore

Register-SecretVault -Name 'pwsh-example-vault' -ModuleName Microsoft.PowerShell.SecretStore

Set-Secret -Vault 'pwsh-example-vault' -Name nyt-api-key -SecureStringSecret (ConvertTo-SecureString 'keyToTheKingdom' -AsPlainText -Force)

Get-Secret -Name nyt-api-key -AsPlainText