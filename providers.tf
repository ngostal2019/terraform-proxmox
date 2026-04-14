provider "proxmox" {
  pm_api_url          = "https://x.x.x.x:8006/api2/json"
  pm_api_token_id     = "terraform-prov@pve!atoken"
  pm_api_token_secret = "x-x-x-x-x"
  pm_tls_insecure     = true # Set to true if using self-signed certificates
}
