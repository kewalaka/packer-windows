REM disable the tile model service that updates tiles on the Start Menu (2016/10)
net stop tiledatamodelsvc
if exist a:\unattend.xml (
  REM copy script to rename machine during unattend process
  copy a:\set-guestnamefromvm.ps1 C:\Windows\Temp\
  REM shutdown and run unattend.xml
  c:\windows\system32\sysprep\sysprep.exe /generalize /oobe /shutdown /unattend:a:\unattend.xml
) else (
  del /F \Windows\System32\Sysprep\unattend.xml
  c:\windows\system32\sysprep\sysprep.exe /generalize /oobe /shutdown /quiet  
)
