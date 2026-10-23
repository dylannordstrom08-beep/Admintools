Write-Host "=== Running Services ===" -ForegroundColor Cyan
Get-Service | Where-Object {$_.Status -eq "Running"} | Format-Table
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

