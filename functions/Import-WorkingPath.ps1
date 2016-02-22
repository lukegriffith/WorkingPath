Function Import-WorkingPath {

    $mr = ModuleRoot


    New-PSDrive -Name wrk -PSProvider FileSystem -Root (cat $mr\workingpath.dat) -Scope Global
}