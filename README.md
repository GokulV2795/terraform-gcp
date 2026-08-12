# terraform-gcp

Enterprise Terraform project for Google Cloud Platform.

This repository contains reusable Terraform modules and a working `dev` environment for provisioning a GCP foundation using best-practice infrastructure patterns.

## What this repo includes

- Reusable modules:
  - `storage` — Cloud Storage bucket resources
  - `network` — VPC, subnet, and network resources
  - `firewall` — firewall rules for the VPC
  - `compute` — VM instance and supporting compute resources
  - `iam` — service account creation and IAM role bindings
  - `project-services` — Google Cloud service enablement
  - `private-service-access` — private services access setup
  - `sql` — Cloud SQL Postgres instance
  - `cloudrun` — Cloud Run service (module present)
- Environment config:
  - `environments/dev` — development workspace with module wiring and variable inputs
- Supporting files:
  - `backend.tf` — Terraform backend configuration (currently local state)
  - `providers.tf` — Google provider config
  - `versions.tf` — required Terraform and provider versions
  - `locals.tf` — shared naming and label values
  - `.github/workflows` — CI workflow for validation and plan checks

## Architecture

The repository is organized as a module-based Terraform project:

- `modules/` contains self-contained reusable modules.
- `environments/` contains environment-specific root configurations.
- `docs/` contains reference documentation and architecture notes.
- `scripts/` contains automation helpers.

## Prerequisites

- Terraform `>= 1.5`
- Google Cloud SDK and active GCP authentication if running locally
- A Google Cloud project with billing enabled
- Appropriate IAM permissions to create networking, storage, compute, SQL, and IAM resources

## Getting started

1. Change into the development environment:

```bash
cd environments/dev
```

2. Initialize Terraform:

```bash
terraform init
```

3. Review the plan:

```bash
terraform plan
```

4. Apply the environment:

```bash
terraform apply
```

## Environment variables and inputs

The `environments/dev` root module accepts the following key variables:

- `project_id` — GCP project ID
- `region` — GCP region, e.g. `asia-south1`
- `zone` — GCP zone, e.g. `asia-south1-a`
- `bucket_name` — storage bucket name
- `location` — bucket location
- `network_name` — VPC name
- `subnet_name` — subnet name
- `subnet_cidr` — subnet CIDR block
- `source_ranges` — firewall source CIDRs
- `target_tags` — firewall target tags
- `instance_name` — VM name
- `machine_type` — VM machine type
- `labels` — common resource labels

## Notes

- Current backend configuration uses local state in `terraform.tfstate`.
- The `providers.tf` file configures the Google provider with `project_id` and `region` variables.
- The `versions.tf` file requires Terraform `>= 1.5` and Google provider `~> 7.0`.

## Recommended workflow

- Use `terraform fmt -check -recursive` to verify formatting.
- Use `terraform validate` before planning.
- Use the module outputs and variable files to keep environment configuration separate from reusable modules.

## Useful commands

```bash
cd environments/dev
terraform fmt -check -recursive
terraform validate
terraform plan
terraform apply
```

## Contribution

- Add new modules under `modules/`
- Keep environment wiring in `environments/<name>/`
- Add documentation in `docs/`
- Keep CI checks in `.github/workflows/`
