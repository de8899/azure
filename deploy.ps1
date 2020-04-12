$adminName = Read-Host -Prompt "Enter the Admin name"
$adminPassword = Read-Host -Prompt "Enter the admin password" -AsSecureString
New-AzResourceGroupDeployment -Name deployvm2 -ResourceGroupName armtesting1 `
-adminUsername $adminName `
-adminPassword $adminPassword `
-TemplateFile ".\w001template.json" `
-TemplateParameterFile ".\parameters.json"