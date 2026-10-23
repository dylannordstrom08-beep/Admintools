Clear-Host

function Show-Menu {
    Write-Host "==============================="-ForegroundColor cyan
    Write-Host "          Admin Menu"           -ForegroundColor yellow
    Write-Host "==============================="-ForegroundColor cyan
    Write-Host "1. System Information"          -ForegroundColor green
    Write-Host "2. Network Information"         -ForegroundColor green
    Write-Host "3. Running Services"            -ForegroundColor green
    Write-host "4. cpu information"             -ForegroundColor green
    Write-Host "5. Disk Information"            -ForegroundColor Green
    Write-Host "0. Exit"                        -ForegroundColor red
    Write-Host "==============================="-ForegroundColor cyan
}

function Run-Choice {
    param($choice)

    switch ($choice) {

        1 {
            Write-Host "Running System Information..." -ForegroundColor Cyan
            & "..\modules\systeminfo.ps1"
        }

        2 {
            Write-Host "Running Network Information..." -ForegroundColor Cyan
            & "..\modules\network.ps1"
        }

        3 {
            Write-Host "Running Running Services..." -ForegroundColor Cyan
            & "..\modules\services.ps1"
        }

        4 {
            Write-Host "Running CPU Information..." -ForegroundColor Cyan
            & "..\modules\cpuinfo.ps1"
        }

        5 {
            Write-Host "Running Disk Information..." -ForegroundColor Cyan
            & "..\modules\diskinfo.ps1"
        }

        0 {
            Write-Host "Exiting..." -ForegroundColor Yellow
            exit
        }

        default {
            Write-Host "Invalid choice, try again." -ForegroundColor Red
        }
    }
}

# --- Main Loop ---
do {
    Show-Menu
    $choice = Read-Host "Enter your choice"
    Run-Choice $choice
    Write-Host ""
} while ($true)
