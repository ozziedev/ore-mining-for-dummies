
<#
    .SYNOPSIS
    This script will try mine the ore captain

    .PARAMETER pathname
    Specifies the file path name for the id json
#>

Param(
    [string]$pathname #id json path on the local workstation
)

# Your solana `.config\solana\id.json` location
$username = "Ashley"
$idJsonLocation = $pathname

# Setup some vars to store details
$address = solana address
$balance = solana balance

Function Log-Start {
    Write-Host "
    #     __  ___       _____         __    ____            __  ____             
    #    /  |/  /_ __  / __(_)______ / /_  / __ \_______   /  |/  (_)__  ___ ____
    #   / /|_/ / // / / _// / __(_-</ __/ / /_/ / __/ -_) / /|_/ / / _ \/ -_) __/
    #  /_/  /_/\_, / /_/ /_/_/ /___/\__/  \____/_/  \__/ /_/  /_/_/_//_/\__/_/   
    #         /___/                                                              
    " -ForegroundColor Magenta
}

Function Log-Address-And-Balance {
    Write-Host "
    *****************************************************************
    [Solana id.json location] $idJsonLocation
    [Solana Address] $address
    [Solana Balance] $balance
    *****************************************************************
    " -ForegroundColor Green
}

Function Start-Ore-Mining {
    ore --rpc https://api.mainnet-beta.solana.com --keypair $idJsonLocation --priority-fee 1 mine --threads 4
}

# Start script
Log-Start
Log-Address-And-Balance
$executeCommand = 'Start-Ore-Mining'

while($true) {
    Write-Host "Running command: $executeCommand" -ForegroundColor Green
    & $executeCommand
    $exitStatus = $LASTEXITCODE
    
    Write-Host "[ERROR]: Command exited with status $exitStatus" -ForegroundColor Red
    If($exitStatus -ne 0) {
        Write-Host "[ERROR]: Command failed, rerunning although you may want to investigate..." -ForegroundColor Red
    }
    Start-Sleep -Seconds 5
}