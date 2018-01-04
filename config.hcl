# Use the file storage - this will write encrypted data to disk.
storage "file" {
  path = "/workstation/vault/data"
}

# Listen on a different port (8201), which will allow us to run multiple
# Vault's simultaneously.
listener "tcp" {
  address     = "127.0.0.1:8201"
  tls_disable = 1
}
