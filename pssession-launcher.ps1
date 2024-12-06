param (
    [string]$url
)


$targetHost = $url -replace "^pssession://", ""


$targetHost = $targetHost.TrimEnd('/')


Write-Host "Connecting to host: $targetHost"


Enter-PSSession -ComputerName $targetHost
