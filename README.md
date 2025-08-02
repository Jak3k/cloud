# Cloud Infrastructure Comparison – GCP Terraform Deployment

This repository contains Terraform configuration files to deploy a web server on Google Cloud Platform (GCP) as part of a cloud infrastructure comparison.

## 🛠️ Files

- `main.tf` – Provisions network, VM, firewall, and startup script
- `variables.tf` – Declares project ID, region, and zone
- `outputs.tf` – Exposes external IP of the deployed VM

## 🚀 Instructions

1. Set the environment variable to your GCP service account key:

```bash
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/your/key.json"
```

2. Initialize Terraform:

```bash
terraform init
```

3. Preview and apply the deployment:

```bash
terraform plan -var="project=your-gcp-project-id"
terraform apply -var="project=your-gcp-project-id"
```

4. Visit the VM's external IP in your browser to see the "Hello World" page.

5. Destroy the deployment when finished:

```bash
terraform destroy -var="project=your-gcp-project-id"
```

## 🧾 Screenshots (included separately)

- `gcp_console_vm.png`
- `ssh_apache_check.png`
- `browser_output.png`