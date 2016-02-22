Function Set-WorkingPath ($path = $pwd.ProviderPath) {
    
    


    $mr = moduleroot

    if ($pwd.drive.name -eq "wrk"){ Set-Location $path }

    try {
        Remove-PSDrive -Name wrk 
    }
    catch {

    }


    $path | Out-File $mr\workingpath.dat -Force

    New-PSDrive -Name wrk -PSProvider FileSystem -Root $path -Scope Global
}

