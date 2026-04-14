# Step to integrate Terraform and Proxmox PVE V9.1.7
---
## Add a user, role with the necessary permissions access and attached

```sh
pveum role add TerraformProv -privs "Datastore.AllocateSpace Datastore.AllocateTemplate Datastore.Audit Pool.Allocate Pool.Audit Sys.Audit Sys.Console Sys.Modify VM.Allocate VM.Audit VM.Clone VM.Config.CDROM VM.Config.Cloudinit VM.Config.CPU VM.Config.Disk VM.Config.HWType VM.Config.Memory VM.Config.Network VM.Config.Options VM.Migrate VM.PowerMgmt SDN.Use"
pveum user add terraform-prov@pve --password <password>
pveum aclmod / -user terraform-prov@pve -role TerraformProv
pveum user token add terraform-prov@pve <token_name>
```
---
## After generating the token, a table will appear.
|key|value|
|---|-----|
|full-tokenid|terraform-prov@pve!token_name|
|info|{"privsep":1}|
|value|x-x-x-x-x|

---
Additional terraform Proxmox provider documentation
---
Terraform [Proxmox provider](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs)