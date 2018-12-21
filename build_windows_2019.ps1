#packer build --only=vmware-iso `
#       --var disk_size=102400 `
#       --var iso_url=C:/packer_cache/Win10_1607_English_x64.iso `
#       --var iso_checksum=99fd8082a609997ae97a514dca22becf20420891 `
#       --var autounattend=./tmp/10/Autounattend.xml `
#       windows_10.json

# bigger disk for hyperv
packer build -force --only=hyperv-iso `
       --var iso_url='F:\ISOs\Windows_InsiderPreview_Server_vNext_en-us_17650.iso' `
       windows_2019.json 
#!/bin/bash