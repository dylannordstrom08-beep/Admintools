Write-Host "=== Disk Information ===" -ForegroundColor Cyan

Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" | ForEach-Object {
    $sizeGB = [math]::Round($_.Size / 1GB, 1)
    $freeGB = [math]::Round($_.FreeSpace / 1GB, 1)
    $usedPct = [math]::Round((($_.Size - $_.FreeSpace) / $_.Size) * 100, 1)

    Write-Host ""
    Write-Host "Drive:  $($_.DeviceID)" -ForegroundColor Yellow
    Write-Host "Size:   $sizeGB GB"
    Write-Host "Free:   $freeGB GB"
    Write-Host "Used:   $usedPct %"
}
# === Logging ===
$logPath = "..\logs"

# Create log folder if missing
if (-not (Test-Path $logPath)) {
    New-Item -ItemType Directory -Path $logPath | Out-Null
}

# Log file name based on module
$moduleName = $MyInvocation.MyCommand.Name
$logFile = Join-Path $logPath ($moduleName + ".log")

# Write log entry
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$entry = "$timestamp - Ran module: $moduleName - User: $env:USERNAME"

Add-Content -Path $logFile -Value $entry
