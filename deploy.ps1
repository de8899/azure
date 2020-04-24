# Each deployment needs changes in params file to: vmname, networkinterfacename, and newpublicipaddress
$adminName = Read-Host -Prompt "Enter the Admin name"
$adminPassword = Read-Host -Prompt "Enter the admin password" -AsSecureString
New-AzResourceGroupDeployment -Name deploy01 -ResourceGroupName RG2 `
-adminUsername $adminName `
-adminPassword $adminPassword `
-TemplateFile ".\w001template.json" `
-TemplateParameterFile ".\parameters.json"