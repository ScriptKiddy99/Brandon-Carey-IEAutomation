Start-Sleep -Seconds 15
$IE = New-Object -ComObject "InternetExplorer.Application"

$IE.Visible = $true
Read-Host "Test"