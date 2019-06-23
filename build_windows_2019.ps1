
# core
packer build --only=hyperv-iso `
  --var disk_size=136400 `
  --var iso_url=D:/ISOs/WindowsServer/2019/17763.379.190312-0539.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso `
  windows_2019_core.json


# # Full desktop experience
# packer build --only=hyperv-iso `
#   --var disk_size=136400 `
#   --var iso_url=D:/ISOs/WindowsServer/2019/17763.379.190312-0539.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso `
#   --var iso_checksum_type=none `
#   windows_2019.json


