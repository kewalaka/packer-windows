REM block WinRM until SetupComplete.cmd is called.
netsh advfirewall firewall set rule name="Windows Remote Management (HTTP-In)" new action=block

REM start WinRM after setup completed - this gives time for the computer to reboot after changing its name.
mkdir c:\Windows\Setup\Scripts
ECHO netsh advfirewall firewall set rule name="Windows Remote Management (HTTP-In)" new action=allow > C:\Windows\Setup\Scripts\SetupComplete.cmd

net stop tiledatamodelsvc
copy a:\set-guestnamefromvm.ps1 C:\Windows\Temp\
c:\windows\system32\sysprep\sysprep.exe /generalize /oobe /shutdown /unattend:a:\unattend.xml
