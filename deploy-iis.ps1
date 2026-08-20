#Requires -RunAsAdministrator
<#
  Deploy Naresh Dhori portfolio to local IIS (free on Windows).
  Double-click deploy-iis.bat and click Yes on the UAC prompt.
#>

$ErrorActionPreference = 'Stop'
$SiteName = 'NareshDhoriPortfolio'
$SitePath = 'C:\Users\NareshDhori\Projects\naresh-dhori-portfolio'
$Port = 8090

Write-Host "=== IIS Portfolio Deployment ===" -ForegroundColor Cyan

if (-not (Test-Path "$SitePath\index.html")) {
  throw "index.html not found at $SitePath"
}

if (-not (Get-Service W3SVC -ErrorAction SilentlyContinue)) {
  Write-Host "Installing IIS..." -ForegroundColor Yellow
  Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole, IIS-WebServer, IIS-CommonHttpFeatures, IIS-StaticContent, IIS-DefaultDocument, IIS-AnonymousAuthentication, IIS-ManagementConsole -All -NoRestart | Out-Null
}

Import-Module WebAdministration

Write-Host "Granting IIS read access..." -ForegroundColor Yellow
$acl = Get-Acl $SitePath
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule('IIS_IUSRS', 'ReadAndExecute', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
$acl.AddAccessRule($rule)
Set-Acl -Path $SitePath -AclObject $acl

# Remove old site if exists (any port)
if (Get-Website -Name $SiteName -ErrorAction SilentlyContinue) {
  Stop-Website -Name $SiteName -ErrorAction SilentlyContinue
  Remove-Website -Name $SiteName
}

Write-Host "Creating website on port $Port..." -ForegroundColor Yellow
New-Website -Name $SiteName -PhysicalPath $SitePath -Port $Port | Out-Null

Write-Host "Enabling anonymous access..." -ForegroundColor Yellow
Set-WebConfigurationProperty -PSPath "IIS:\Sites\$SiteName" -Filter '/system.webServer/security/authentication/anonymousAuthentication' -Name 'enabled' -Value 'true'
Set-WebConfigurationProperty -PSPath "IIS:\Sites\$SiteName" -Filter '/system.webServer/security/authentication/windowsAuthentication' -Name 'enabled' -Value 'false' -ErrorAction SilentlyContinue

Start-Website -Name $SiteName
Start-Service W3SVC

Write-Host ""
Write-Host "SUCCESS - Portfolio deployed to IIS" -ForegroundColor Green
Write-Host "  http://localhost:$Port" -ForegroundColor White
Write-Host "  http://127.0.0.1:$Port" -ForegroundColor White
Write-Host ""
Write-Host "Press any key to close..."
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')
