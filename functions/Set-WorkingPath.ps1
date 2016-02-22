Function Set-WorkingPath ($path = $pwd.path) {
    
    
    try {
        Remove-PSDrive -Name wrk 
    }
    catch {

    }

    $mr = moduleroot

    $path | Out-File $mr\workingpath.dat -Force
    New-PSDrive -Name wrk -PSProvider FileSystem -Root $path -Scope Global
}

