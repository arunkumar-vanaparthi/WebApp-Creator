param(
    [string]$AppUrl,
    [string]$AppName
)

# Step 1: Check if Node.js is installed
$nodeVersion = node -v 2>$null
if (-not $nodeVersion) {
    Write-Host "Node.js not found. Installing..."
    winget install -e --id OpenJS.NodeJS.LTS
    $env:Path += ";C:\Program Files\nodejs"
} else {
    Write-Host "Node.js is already installed. Version: $nodeVersion"
}

# Step 2: Check if Nativefier is installed
$nativefierVersion = nativefier -v 2>$null
if (-not $nativefierVersion) {
    Write-Host "Nativefier not found. Installing..."
    npm install -g nativefier
    $env:Path += ";$($env:AppData)\npm"
} else {
    Write-Host "Nativefier is already installed. Version: $nativefierVersion"
}

# Step 3: Create the custom browser app
Write-Host "Creating $AppName from $AppUrl ..."
nativefier $AppUrl `
  --name $AppName `
  --disable-old-build-warning

# Step 4: Finish
Write-Host "Done! Check the output folder for your new $AppName app."
Read-Host "Press Enter to exit"
