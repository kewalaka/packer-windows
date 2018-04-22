# Hyper-V version

$hypervVMName = Get-ItemProperty 'HKLM:\Software\Microsoft\Virtual Machine\Guest\Parameters\' | Select-Object -ExpandProperty 'VirtualMachineName' -ErrorAction SilentlyContinue
If ($hypervVMName -ne $null)
{
    Rename-Computer $hypervVMName
# don't restart the computer because it will interupt Vagrant's WInRM provisioner, better to let it manage the restart.
    #    Restart-Computer -Force
}

# VMware & Virtulbox - TODO