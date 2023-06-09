# My Hetzner Cloud Terraform Modules

## How to retrieve the private key of the bastion host

```shell
terraform output -raw private_bastion_host_ssh_private_key
```