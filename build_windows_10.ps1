#packer build --only=vmware-iso `
#       --var disk_size=102400 `
#       --var iso_url=C:/packer_cache/Win10_1607_English_x64.iso `
#       --var iso_checksum=99fd8082a609997ae97a514dca22becf20420891 `
#       --var autounattend=./tmp/10/Autounattend.xml `
#       windows_10.json

# 1903
packer build --only=hyperv-iso `
  --var disk_size=136400 `
  --var iso_url=D:/ISOs/WindowsClient/10/1903/18362.30.190401-1528.19h1_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso `
  --var iso_checksum=ab4862ba7d1644c27f27516d24cb21e6b39234eb3301e5f1fb365a78b22f79b3 `
  windows_10.json


# # 1809
# packer build --only=hyperv-iso `
#        --var disk_size=136400 `
#        --var iso_url=D:/ISOs/WindowsClient/10/1809/17763.107.101029-1455.rs5_release_svc_refresh_CLIENTENTERPRISE^CAL_OEMRET_x64FRE_en-us.iso `
#        --var iso_checksum=0278fc4638741f4a1dc85c39ed7fa76bb15fd582165f6ef036e9a9fb2f029351 `
#        windows_10.json
