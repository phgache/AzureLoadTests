#
# FlattenOutput.ps1
#

param
(
    [string]$Folder
)

foreach($item in Get-ChildItem $Folder -Recurse -Directory)
{  
    $path = Join-Path $Folder $item
    $pathwildcard = $path + "\*"

    Write-Output "Flatten $path"

    Move-Item $pathwildcard $Folder -Force

    Remove-Item $path
}

Get-ChildItem $Folder -Recurse | FT Name, Directory