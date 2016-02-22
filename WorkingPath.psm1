

Get-ChildItem -Path $PSScriptRoot\functions | ForEach-Object -Process { . $_.FullName } 