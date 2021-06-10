# Quick Dashboard
# The Universal product allows IT folks to make tools quickly, 
# removing a mountain of home grown effort

Install-Module Universal -Force
<#
Import-Module Universal -Force
Install-PSUServer -AddToPath
Start-PSUServer -Port 5600
#>

# Add a button
$button = New-UDButton -Text "Click me!" -OnClick {
    Show-UDToast -Message "Clicked!"
}

# Add a page with your button to the list of pages
$Pages = @()
$Pages += New-UDPage -Name 'Clickities' -Content { $button }

# Add a dashboard with your page
$dashy = New-UDDashboard -Title 'Even You Can Make Dashboard' -Pages $Pages

# Start the dashboard
try {
    Start-UDDashboard -Dashboard $dashy
}
catch {
    throw $Error[0]
}
# Launch the dashboard
if ($IsMacOS) {
    & /Applications/Firefox.app/Contents/MacOS/firefox http://localhost:80
}
else {
    & firefox localhost
}
