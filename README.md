# Description

This repository implements the terraform's provider creation tutorial available from https://learn.hashicorp.com/tutorials/terraform/provider-debug?in=terraform/providers

## Building

Run the following command to build the provider

```shell
go build -o terraform-provider-hashicups
```

## Test sample configuration

First, build and install the provider.

```shell
make install
```

Then, run the following command to initialize the workspace and apply the sample configuration.

```shell
terraform init && terraform apply
```