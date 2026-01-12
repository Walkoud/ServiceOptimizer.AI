# ServiceOptimizer.AI - AI-driven Windows Service Optimizer
# Created by Walkoud
# GitHub: https://github.com/Walkoud/ServiceOptimizer.AI

# --- Affichage ASCII Art ---
$asciiArt = @"
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣀⣀⣠⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠋⠉⠁⠀⠀⠀⠀⠀⠉⠓⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢉⡳⡜⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⢀⡾⣷⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠀⢸⢃⣼⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⣦⣈⣹⠿⠹⣆⠀⠀⠀⠀⠀⠀⢀⡤⠖⠚⠉⠿⡿⣿⣿⣷⣶⣤⣤⣞⣦⠀⠀⢠⠞⠁⣿⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⠈⢷⡀⠉⠓⠀⠀⠀⠀⢠⡟⠀⠀⠀⠀⣋⣁⣀⣀⡉⠛⠯⣬⣥⠾⠻⣶⡋⠀⠀⣏⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠃⠀⠀⠀⣨⡇⠀⠀⠀⠀⠀⠀⠸⠀⠀⠀⣴⣿⠟⠋⠉⠛⠿⣷⡄⠀⠀⠀⠀⣠⣭⣄⠀⣷⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠟⠁⠀⠀⠀⠀⠀⠹⣷⠀⠀⢠⣾⡟⠹⡏⠉⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠿⠀⠀⣸⠋⠀⠀⡇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⡀⠤⢤⡤⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣘⣉⣉⡙⣆⠀⠀⠀⠀⣰⡷⠤⢤⣠⠇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣠⠴⠛⠉⢁⣀⠤⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⠀⢯⡁⠀⢰⣿⡏⠀⠀⠀⢠⣿⠿⢒⣶⠃⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣠⡴⠋⠀⢀⣤⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡈⠛⠤⣤⠝⠁⠀⠀⠀⣿⣷⡄⠸⣿⡆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣠⠞⠋⠀⠀⢀⣾⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠒⠛⠀⠀⠀⠀⠀⠙⢿⣿⣷⡇⣷⡀⠀⠀⠀⠀⠀⠀
⠤⠴⠚⠁⠀⠀⠀⠀⡞⠙⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⠀⠀⠀⠀⠻⣄⠀⣿⢳⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢷⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⠉⠀⠀⠀⠀⠀⠀⠀⢸⡇⡇⠈⢷⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡀⣠⣤⡀⠀⠀⠀⠀⠀⣼⢷⡇⠀⠈⡆⠀⠀⠀⠀
⡀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠙⠛⠻⢿⣄⠀⠀⢀⡴⣫⡾⠀⠀⠀⢷⡄⠀⠀⠀
⢳⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠋⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⣴⠛⠀⠀⠀⠀⢸⠳⣄⠀⠀
⠈⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⠀⣼⠄⠹⡄⠀
⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣆⠻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⠀⠀⡟⠀⠀⡇⠀
⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣦⢹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡏⠀⠐⠒⠒⠒⠒⠒⠒⠦⢤⣀⣀⣀⣠⣰⠃⠀⠀⠀⠀⠀⠀⡇⠀⠀⢹⠀
⠀⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠇⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⢸⠂
⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣇⢹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠏⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⢸⡆
⠀⠀⠸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⠹⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⢸⠇
⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⡈⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⠀⠀⢸⠀
⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡈⠙⠶⣄⠀⠀⠀⠀⠀⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡇⠀⠀⢸⠀
⠀⠀⠠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣆⠀⠈⠳⣤⠀⠀⠀⠀⠙⠶⠤⣀⣀⣀⣀⣠⡤⠶⠞⢹⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠄⠀⠀⡏⠀
⠀⠀⢸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⡄⠀⠈⠓⠦⠤⢤⣀⣀⡤⠤⠤⠛⠛⠁⠀⠀⢠⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⠀⠀⢠⡇⠀
⠀⢠⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡗⠀⠀⣸⡆⠀
⢀⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⠀⠀⡿⠀⠀
⡞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⢠⡬⣷⣀⠀⠀⠀⠀⠀⠀⠀⣰⠟⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⠆⠀⢸⠃⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣁⡽⠀⠳⣤⣈⠙⠒⠲⠤⠤⠴⢞⣿⣭⠭⠿⠟⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⡾⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⢀⡾⠉⠙⠒⡆⢀⣤⣷⡏⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠇⠀⠀⡇⠀⠀⠀
________________________________________________________________________________________________________


▄▄▄▄  ▄▄▄  ▄▄▄▄      ▄▄                       ▄▄ 
▀███  ███  ███▀      ██ ▄▄                    ██ 
 ███  ███  ███  ▀▀█▄ ██ ██ ▄█▀ ▄███▄ ██ ██ ▄████ 
 ███▄▄███▄▄███ ▄█▀██ ██ ████   ██ ██ ██ ██ ██ ██ 
  ▀████▀████▀  ▀█▄██ ██ ██ ▀█▄ ▀███▀ ▀██▀█ ▀████ 
                                                                                                                           
       ▄▄                                        
▀▀     ██                                        
██  ▄████ ▄█▀█▄  ▀▀█▄ ▄█▀▀▀                      
██  ██ ██ ██▄█▀ ▄█▀██ ▀███▄                      
██▄ ▀████ ▀█▄▄▄ ▀█▄██ ▄▄▄█▀    

________________________________________________________________________________________________________
                                                                                                       
                                                                                                       
▄█████ ▄▄▄▄▄ ▄▄▄▄  ▄▄ ▄▄ ▄▄  ▄▄▄▄ ▄▄▄▄▄ ▄████▄ ▄▄▄▄ ▄▄▄▄▄▄ ▄▄ ▄▄   ▄▄ ▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄    ▄████▄ ██ 
▀▀▀▄▄▄ ██▄▄  ██▄█▄ ██▄██ ██ ██▀▀▀ ██▄▄  ██  ██ ██▄█▀  ██   ██ ██▀▄▀██ ██   ▄█▀ ██▄▄  ██▄█▄   ██▄▄██ ██ 
█████▀ ██▄▄▄ ██ ██  ▀█▀  ██ ▀████ ██▄▄▄ ▀████▀ ██     ██   ██ ██   ██ ██ ▄██▄▄ ██▄▄▄ ██ ██ ▄ ██  ██ ██

"@

Write-Host $asciiArt -ForegroundColor Cyan
Write-Host ""
Write-Host "ServiceOptimizer.AI - AI-driven Windows Service Optimizer" -ForegroundColor Green
Write-Host "Created by Walkoud | GitHub: https://github.com/Walkoud/ServiceOptimizer.AI" -ForegroundColor Gray
Write-Host ""

# --- Vérification des droits administrateur ---
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "ServiceOptimizer.AI doit être exécuté en tant qu'Administrateur. Tentative de relancement..." -ForegroundColor Yellow
    $argList = @()

    $PSBoundParameters.GetEnumerator() | ForEach-Object {
        $argList += if ($_.Value -is [switch] -and $_.Value) {
            "-$($_.Key)"
        } elseif ($_.Value -is [array]) {
            "-$($_.Key) $($_.Value -join ',')"
        } elseif ($_.Value) {
            "-$($_.Key) '$($_.Value)'"
        }
    }

    $script = if ($PSCommandPath) {
        "& { & `'$($PSCommandPath)`' $($argList -join ' ') }"
    } else {
        "&([ScriptBlock]::Create((irm https://github.com/Walkoud/ServiceOptimizer.AI/main/index.ps1))) $($argList -join ' ')"
    }

    $powershellCmd = if (Get-Command pwsh -ErrorAction SilentlyContinue) { "pwsh" } else { "powershell" }
    $processCmd = if (Get-Command wt.exe -ErrorAction SilentlyContinue) { "wt.exe" } else { "$powershellCmd" }

    if ($processCmd -eq "wt.exe") {
        Start-Process $processCmd -ArgumentList "$powershellCmd -ExecutionPolicy Bypass -NoProfile -Command `"$script`"" -Verb RunAs
    } else {
        Start-Process $processCmd -ArgumentList "-ExecutionPolicy Bypass -NoProfile -Command `"$script`"" -Verb RunAs
    }

    exit
}

# --- Chargement des dépendances ---
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# --- Configuration GitHub ---
$GitHubRepo = "https://raw.githubusercontent.com/Walkoud/ServiceOptimizer.AI/main"
$RequiredFiles = @(
    @{Name = "languages.json"; Url = "$GitHubRepo/languages.json"},
    @{Name = "prompt.txt"; Url = "$GitHubRepo/prompt.txt"}
)

# --- Fonction de téléchargement automatique des fichiers manquants ---
function Download-MissingFiles {
    $scriptPath = if ($PSScriptRoot) { $PSScriptRoot } else { Split-Path -Parent $MyInvocation.MyCommand.Path }
    if (-not $scriptPath) { $scriptPath = $PWD }
    
    foreach ($file in $RequiredFiles) {
        $filePath = Join-Path $scriptPath $file.Name
        if (-not (Test-Path $filePath)) {
            try {
                Write-Host "Downloading $($file.Name)..." -ForegroundColor Yellow
                $webClient = New-Object System.Net.WebClient
                $webClient.Encoding = [System.Text.Encoding]::UTF8
                $content = $webClient.DownloadString($file.Url)
                [System.IO.File]::WriteAllText($filePath, $content, [System.Text.Encoding]::UTF8)
                Write-Host "$($file.Name) downloaded successfully." -ForegroundColor Green
            } catch {
                [System.Windows.Forms.MessageBox]::Show("Failed to download $($file.Name).`nError: $($_.Exception.Message)`n`nPlease ensure you have internet connection or place the file manually.", "Error")
                exit
            }
        }
    }
}

# Télécharger les fichiers manquants
Download-MissingFiles

# --- Chargement de la Configuration (Langues) ---
$scriptPath = if ($PSScriptRoot) { $PSScriptRoot } else { Split-Path -Parent $MyInvocation.MyCommand.Path }
if (-not $scriptPath) { $scriptPath = $PWD }
$jsonPath = Join-Path $scriptPath "languages.json"

if (-not (Test-Path $jsonPath)) {
    [System.Windows.Forms.MessageBox]::Show("Fichier 'languages.json' introuvable !`nVeuillez vérifier votre connexion internet ou placer le fichier manuellement.")
    exit
}

# On utilise -Raw pour charger tout le fichier d'un coup, et un Hashtable pour la rapidité
# -Encoding UTF8 pour gérer correctement les emojis et caractères spéciaux
$LangData = Get-Content $jsonPath -Raw -Encoding UTF8 | ConvertFrom-Json
$CurrentLangDict = $null # Stocke le dictionnaire de la langue active

# --- XAML MODERNISÉ ---
# Note : J'ai ajouté des x:Name sur TOUS les TextBlock qui doivent être traduits
$inputXML = @'
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        x:Name="MainWindow"
        Title="IA Service Optimizer"
        Height="850" Width="900"
        Background="#0f172a" Foreground="#f8fafc"
        WindowStartupLocation="CenterScreen" UseLayoutRounding="True">
    
    <Window.Resources>
        <Style x:Key="ModernBtn" TargetType="Button">
            <Setter Property="Padding" Value="15,8"/>
            <Setter Property="Background" Value="#3b82f6"/>
            <Setter Property="Foreground" Value="White"/>
            <Setter Property="FontWeight" Value="SemiBold"/>
            <Setter Property="BorderThickness" Value="0"/>
            <Setter Property="Cursor" Value="Hand"/>
            <Style.Resources>
                <Style TargetType="Border">
                    <Setter Property="CornerRadius" Value="6"/>
                </Style>
            </Style.Resources>
        </Style>

        <Style TargetType="ComboBox">
            <Setter Property="Height" Value="32"/>
            <Setter Property="VerticalContentAlignment" Value="Center"/>
            <Setter Property="Background" Value="#1e293b"/>
            <Setter Property="Foreground" Value="Black"/>
            <Setter Property="BorderThickness" Value="1"/>
            <Setter Property="Padding" Value="5,0"/>
        </Style>
    </Window.Resources>

    <Grid>
        <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="*"/>
            <RowDefinition Height="Auto"/>
        </Grid.RowDefinitions>

        <Border Grid.Row="0" Background="#1e293b" Padding="20" BorderBrush="#334155" BorderThickness="0,0,0,1">
            <StackPanel>
                <TextBlock x:Name="txtHeaderTitle" Text="IA SERVICE OPTIMIZER" FontSize="22" FontWeight="Bold" Foreground="#60a5fa" Margin="0,0,0,5"/>
                <TextBlock x:Name="txtHeaderSubtitle" Text="..." Foreground="#94a3b8" Margin="0,0,0,20"/>
                
                <Grid>
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="Auto"/>
                        <ColumnDefinition Width="Auto"/>
                        <ColumnDefinition Width="10"/>
                        <ColumnDefinition Width="*"/>
                        <ColumnDefinition Width="10"/>
                        <ColumnDefinition Width="Auto"/>
                    </Grid.ColumnDefinitions>
                    
                    <Button x:Name="btnBackup" Content="BACKUP" Style="{StaticResource ModernBtn}" Background="#475569" Grid.Column="0"/>
                    
                    <StackPanel Orientation="Horizontal" Grid.Column="1" Margin="20,0,0,0">
                        <TextBlock x:Name="lblLanguage" Text="Language:" VerticalAlignment="Center" Margin="0,0,10,0" Foreground="#cbd5e1"/>
                        <ComboBox x:Name="comboLang" Width="120" />
                    </StackPanel>

                    <Button x:Name="btnPrompt" Content="AI PROMPT" Style="{StaticResource ModernBtn}" Background="#8b5cf6" Grid.Column="3"/>
                    <Button x:Name="btnImport" Content="ANALYZE" Style="{StaticResource ModernBtn}" Background="#10b981" Grid.Column="5"/>
                </Grid>
                
                <StackPanel Orientation="Horizontal" Margin="0,10,0,0">
                    <CheckBox x:Name="chkXbox" Content="Xbox" Foreground="#cbd5e1" Margin="0,0,20,0" IsChecked="False"/>
                    <CheckBox x:Name="chkStore" Content="Store" Foreground="#cbd5e1" IsChecked="False"/>
                    <Button x:Name="btnCustomNotes" Content="📝 CUSTOM NOTES" Style="{StaticResource ModernBtn}" Background="#f59e0b" Margin="20,0,0,0"/>
                </StackPanel>
                
                <TextBox x:Name="txtCustomNotes" Margin="0,10,0,0" MinHeight="80" MaxHeight="150" 
                         TextWrapping="Wrap" AcceptsReturn="True" VerticalScrollBarVisibility="Auto"
                         Background="#1e293b" Foreground="#f8fafc" BorderBrush="#334155" 
                         Padding="10" Visibility="Collapsed"/>
            </StackPanel>
        </Border>

        <ScrollViewer Grid.Row="1" VerticalScrollBarVisibility="Auto" Padding="20">
            <StackPanel x:Name="panel" />
        </ScrollViewer>

        <Border Grid.Row="2" Background="#0f172a" Padding="10" BorderBrush="#334155" BorderThickness="0,1,0,0">
            <StackPanel>
                <TextBlock x:Name="txtStatus" Text="..." Foreground="#64748b" HorizontalAlignment="Center"/>
                <TextBlock Text="Created by Walkoud | GitHub: github.com/Walkoud/ServiceOptimizer.AI" 
                           Foreground="#475569" FontSize="10" HorizontalAlignment="Center" Margin="0,5,0,0"/>
            </StackPanel>
        </Border>
    </Grid>
</Window>
'@

# --- Initialisation WPF ---
[xml]$XAML = $inputXML
$reader = New-Object System.Xml.XmlNodeReader $XAML
$window = [Windows.Markup.XamlReader]::Load($reader)

# Récupération des contrôles
$panel = $window.FindName("panel")
$btnBackup = $window.FindName("btnBackup")
$comboLang = $window.FindName("comboLang")
$btnPrompt = $window.FindName("btnPrompt")
$btnImport = $window.FindName("btnImport")
$txtStatus = $window.FindName("txtStatus")
$chkXbox = $window.FindName("chkXbox")
$chkStore = $window.FindName("chkStore")
$txtHeaderTitle = $window.FindName("txtHeaderTitle")
$txtHeaderSubtitle = $window.FindName("txtHeaderSubtitle")
$lblLanguage = $window.FindName("lblLanguage")
$btnCustomNotes = $window.FindName("btnCustomNotes")
$txtCustomNotes = $window.FindName("txtCustomNotes")

# --- Fonction de traduction de l'interface ---
function Update-LanguageUI($langName) {
    if (-not $LangData.PSObject.Properties.Name.Contains($langName)) { return }
    
    $dict = $LangData.$langName
    $global:CurrentLangDict = $dict # Mise à jour de la variable globale pour les autres fonctions

    # Mise à jour des textes statiques
    $window.Title = $dict.Title
    $txtHeaderTitle.Text = $dict.HeaderTitle
    $txtHeaderSubtitle.Text = $dict.HeaderSubtitle
    $btnBackup.Content = $dict.BtnBackup
    $lblLanguage.Text = $dict.LblLanguage
    $btnPrompt.Content = $dict.BtnPrompt
    $btnImport.Content = $dict.BtnImport
    $chkXbox.Content = $dict.ChkXbox
    $chkStore.Content = $dict.ChkStore
    $btnCustomNotes.Content = $dict.BtnCustomNotes
    $txtCustomNotes.Text = $dict.TxtCustomNotesPlaceholder
    $txtStatus.Text = $dict.StatusReady
}

# --- Initialisation Langues ---
# On récupère les propriétés (clés) du JSON pour remplir la ComboBox
$LangData.PSObject.Properties.Name | ForEach-Object { [void]$comboLang.Items.Add($_) }

# Sélection par défaut (English si dispo, sinon le premier)
if ($comboLang.Items.Contains("English")) { $comboLang.SelectedItem = "English" } else { $comboLang.SelectedIndex = 0 }

# Trigger initial
Update-LanguageUI $comboLang.SelectedItem

# Événement changement de langue
$comboLang.Add_SelectionChanged({
    Update-LanguageUI $comboLang.SelectedItem
})

# Événement bouton Custom Notes (afficher/masquer le TextBox)
$btnCustomNotes.Add_Click({
    if ($txtCustomNotes.Visibility -eq "Collapsed") {
        $txtCustomNotes.Visibility = "Visible"
    } else {
        $txtCustomNotes.Visibility = "Collapsed"
    }
})

# --- Fonctions Logiques ---

function Export-ServiceBackup {
    $path = "services_backup_$(Get-Date -Format 'yyyyMMdd_HHmmss').csv"
    Get-Service | Select-Object Name, StartType, Status | Export-Csv -Path $path -NoTypeInformation -Encoding UTF8
    
    # Utilisation du dictionnaire global pour le message
    $msg = $global:CurrentLangDict.MsgBackupSuccess -f $path
    [System.Windows.Forms.MessageBox]::Show($msg, $global:CurrentLangDict.Title)
}

function Copy-IAPrompt {
    $dict = $global:CurrentLangDict
    $serviceList = Get-Service | Select-Object Name, DisplayName, StartType, Status | ConvertTo-Json -Depth 1
    
    # Chargement du template de prompt depuis le fichier externe
    $currentScriptPath = if ($PSScriptRoot) { $PSScriptRoot } else { Split-Path -Parent $MyInvocation.MyCommand.Path }
    if (-not $currentScriptPath) { $currentScriptPath = $PWD }
    $promptPath = Join-Path $currentScriptPath "prompt.txt"
    if (-not (Test-Path $promptPath)) {
        [System.Windows.Forms.MessageBox]::Show("Fichier 'prompt.txt' introuvable !`nVeuillez le placer dans le même dossier.", $dict.MsgError)
        return
    }
    
    $promptTemplate = Get-Content $promptPath -Raw -Encoding UTF8
    
    # Remplacement des placeholders
    $prompt = $promptTemplate -replace '\{\{PromptIntro\}\}', $dict.PromptIntro
    $prompt = $prompt -replace '\{\{PromptRule\}\}', $dict.PromptRule
    $prompt = $prompt -replace '\{\{PromptLang\}\}', $dict.PromptLang
    $prompt = $prompt -replace '\{\{ServiceList\}\}', $serviceList
    
    # Notes conditionnelles
    $xboxNote = ""
    $storeNote = ""
    $customNote = ""
    if ($chkXbox.IsChecked) { $xboxNote = "`nNote: Xbox services are unused. Disable them." }
    if ($chkStore.IsChecked) { $storeNote = "`nNote: Microsoft Store is unused. Disable related services." }
    if ($txtCustomNotes.Text -and $txtCustomNotes.Text.Trim() -ne "" -and $txtCustomNotes.Text -ne $dict.TxtCustomNotesPlaceholder) {
        $customNote = "`n`nCustom Note: $($txtCustomNotes.Text.Trim())"
    }
    
    $prompt = $prompt -replace '\{\{XboxNote\}\}', $xboxNote
    $prompt = $prompt -replace '\{\{StoreNote\}\}', $storeNote
    $prompt = $prompt -replace '\{\{CustomNote\}\}', $customNote
    
    # Nettoyage des lignes vides supplémentaires
    $prompt = $prompt -replace '\r?\n\s*\r?\n\s*\r?\n+', "`n`n"

    [System.Windows.Forms.Clipboard]::SetText($prompt)
    $txtStatus.Text = $dict.StatusCopied
}

# --- Importation et Génération UI ---
$btnImport.Add_Click({
    $jsonText = [System.Windows.Forms.Clipboard]::GetText()
    $dict = $global:CurrentLangDict

    try {
        $data = $jsonText | ConvertFrom-Json
        $panel.Children.Clear()
        $txtStatus.Text = $dict.StatusAnalyze -f $data.Count
    } catch {
        [System.Windows.Forms.MessageBox]::Show($dict.MsgNoJson, $dict.MsgError)
        return
    }

    foreach ($s in $data) {
        # Filtrage des services déjà optimisés
        if ($s.Current_Startup -eq $s.Recommended_Startup -and $s.Current_State -eq $s.Recommended_State) { continue }

        $currentName = $s.Name

        # --- Construction Card (WPF pur via PowerShell) ---
        $card = New-Object System.Windows.Controls.Border
        $card.Background = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("#1e293b")
        $card.CornerRadius = 8
        $card.Margin = "0,0,0,12"
        $card.Padding = 15
        $card.BorderBrush = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("#334155")
        $card.BorderThickness = 1

        $grid = New-Object System.Windows.Controls.Grid
        $grid.ColumnDefinitions.Add((New-Object System.Windows.Controls.ColumnDefinition -Property @{Width = "*"}))
        $grid.ColumnDefinitions.Add((New-Object System.Windows.Controls.ColumnDefinition -Property @{Width = "Auto"}))

        # --- Colonne Gauche (Infos) ---
        $stackLeft = New-Object System.Windows.Controls.StackPanel
        
        $title = New-Object System.Windows.Controls.TextBlock
        $title.Text = "$($s.Display) ($currentName)"
        $title.FontSize = 14
        $title.FontWeight = "Bold"
        $title.Foreground = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("#f1f5f9")
        
        $reason = New-Object System.Windows.Controls.TextBlock
        $reason.Text = "💡 $($s.Reason)"
        $reason.FontStyle = "Italic"
        $reason.Foreground = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("#94a3b8")
        $reason.Margin = "0,5,0,10"
        $reason.TextWrapping = "Wrap"

        # Labels d'état (Traduits dynamiquement lors de la création)
        $lblCurrentStartup = New-Object System.Windows.Controls.TextBlock
        $lblCurrentStartup.Text = "$($dict.LblCurrentStartup) $($s.Current_Startup)"
        $lblCurrentStartup.Foreground = "#cbd5e1"
        $lblCurrentStartup.Margin = "0,0,0,5"

        $lblCurrentState = New-Object System.Windows.Controls.TextBlock
        $lblCurrentState.Text = "$($dict.LblCurrentState) $($s.Current_State)"
        $lblCurrentState.Foreground = "#cbd5e1"
        $lblCurrentState.Margin = "0,0,0,10"

        # Ligne de réglages
        $stackSettings = New-Object System.Windows.Controls.StackPanel
        $stackSettings.Orientation = "Horizontal"

        # Startup
        $lblStart = New-Object System.Windows.Controls.TextBlock -Property @{Text="$($dict.LblRecommended) "; Foreground="#cbd5e1"; VerticalAlignment="Center"}
        $cboStartup = New-Object System.Windows.Controls.ComboBox -Property @{Width=110; Margin="5,0,15,0"}
        $cboStartup.ItemsSource = @("Automatic", "Manual", "Disabled")
        $cboStartup.SelectedItem = $s.Recommended_Startup

        # State
        $lblState = New-Object System.Windows.Controls.TextBlock -Property @{Text="$($dict.LblRecommended) "; Foreground="#cbd5e1"; VerticalAlignment="Center"}
        $cboState = New-Object System.Windows.Controls.ComboBox -Property @{Width=100; Margin="5,0,0,0"}
        $cboState.ItemsSource = @("Running", "Stopped")
        $cboState.SelectedItem = $s.Recommended_State

        $stackSettings.Children.Add($lblStart)
        $stackSettings.Children.Add($cboStartup)
        $stackSettings.Children.Add($lblState)
        $stackSettings.Children.Add($cboState)

        $stackLeft.Children.Add($title)
        $stackLeft.Children.Add($reason)
        $stackLeft.Children.Add($lblCurrentStartup)
        $stackLeft.Children.Add($lblCurrentState)
        $stackLeft.Children.Add($stackSettings)

        # --- Colonne Droite (Bouton Action) ---
        $btnExec = New-Object System.Windows.Controls.Button
        $btnExec.Content = $dict.BtnApply
        $btnExec.Width = 100
        $btnExec.Height = 40
        $btnExec.Background = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("#2563eb")
        $btnExec.Foreground = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("White")
        $btnExec.FontWeight = "Bold"
        $btnExec.Margin = "20,0,0,0"
        $btnExec.VerticalAlignment = "Center"
        
        # Réinitialiser le bouton quand les options changent
        $cboStartup.Add_SelectionChanged({
            $btnExec.Background = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("#2563eb")
            $btnExec.Content = $global:CurrentLangDict.BtnApply
        }.GetNewClosure())
        
        $cboState.Add_SelectionChanged({
            $btnExec.Background = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("#2563eb")
            $btnExec.Content = $global:CurrentLangDict.BtnApply
        }.GetNewClosure())
        
        # --- Logique Bouton (Closure pour capturer les variables) ---
        $btnExec.Add_Click({
            $localDict = $global:CurrentLangDict # Capture du dico au moment du clic
            try {
                # Réinitialiser le bouton au début si c'était déjà en vert
                $this.Background = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("#2563eb")
                $this.Content = $localDict.BtnApply
                
                # Application Startup
                Set-Service -Name $currentName -StartupType $cboStartup.SelectedItem -ErrorAction Stop
                
                # Application État
                if ($cboState.SelectedItem -eq "Stopped") {
                    Stop-Service -Name $currentName -Force -ErrorAction Stop
                } elseif ($cboState.SelectedItem -eq "Running") {
                    Start-Service -Name $currentName -ErrorAction Stop
                }
                
                # Mise à jour visuelle des labels (Feedback immédiat)
                $updatedService = Get-Service -Name $currentName
                $lblCurrentStartup.Text = "$($localDict.LblCurrentStartup) $($updatedService.StartType)"
                $lblCurrentState.Text = "$($localDict.LblCurrentState) $($updatedService.Status)"
                
                # Style succès (vert) - le bouton reste activé
                $this.Background = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("#10b981")
                $this.Content = $localDict.BtnApplySuccess
            } catch {
                [System.Windows.Forms.MessageBox]::Show("$($localDict.MsgError): $($_.Exception.Message)")
            }
        }.GetNewClosure())

        $grid.Children.Add($stackLeft)
        [System.Windows.Controls.Grid]::SetColumn($btnExec, 1)
        $grid.Children.Add($btnExec)

        $card.Child = $grid
        $panel.Children.Add($card)
    }
})

# Events principaux
$btnBackup.Add_Click({ Export-ServiceBackup })
$btnPrompt.Add_Click({ Copy-IAPrompt })

# Lancement
$window.ShowDialog() | Out-Null