# Audio Aid
# Bluetooth Pairing & Troubleshooting Assistant

# Clear the terminal screen.
Clear-Host  

# Display the application title.
Write-Host "================================"
Write-Host "           AUDIO AID"
Write-Host "================================"

# Retrieve Bluetooth devices from Windows.
Write-Host "Checking Bluetooth devices..." -ForegroundColor Cyan

# Display each device's name and status.
Get-PnpDevice -Class Bluetooth |
    Select-Object FriendlyName, Status |
    Format-Table -AutoSize

# Let the user know the check is finished.
Write-Host "Bluetooth device check complete!" -ForegroundColor Green
