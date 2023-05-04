Connect-AzAccount

foreach ($resourceId in Get-Content .\file.txt) {
    az webapp config set --ids $resourceId --ftps-state Disabled
}
