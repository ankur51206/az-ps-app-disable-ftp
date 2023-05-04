Connect-AzAccount

# Get list of all App Services in subscription
$appServices = Get-AzWebApp

# Loop through list of App Services and disable FTP
foreach ($appService in $appServices) {
    az webapp config set --name $appService.Name --resource-group $appService.ResourceGroup --ftps-state Disabled
}
