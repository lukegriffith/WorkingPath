
Function ModuleRoot {

    return Split-Path ($MyInvocation.MyCommand.Module.Path) -Parent

}