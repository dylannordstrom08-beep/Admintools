Write-Host "=== CPU Information ===" -ForegroundColor Cyan

$cpu = Get-CimInstance Win32_Processor

Write-Host "Name: $($cpu.Name)"
Write-Host "Cores: $($cpu.NumberOfCores)"
Write-Host "Logical Processors: $($cpu.NumberOfLogicalProcessors)"
Write-Host "Max Clock Speed: $($cpu.MaxClockSpeed) MHz"
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
