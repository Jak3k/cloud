# Cloud – GCP Deployment

This repository contains Terraform code used to deploy a basic web server on Google Cloud Platform (GCP) as part of a cloud infrastructure comparison project. The setup provisions a virtual machine running Ubuntu, configures firewall rules, assigns a static IP, and deploys a simple “Hello World” page using Apache.

##  Files

- **main.tf** – Provisions the VPC, firewall, VM instance, and startup script.
- **variables.tf** – Declares the `project`, `region`, and `zone` variables.
- **outputs.tf** – Displays the external IP address of the deployed VM after successful execution.

##  Setup Instructions

### 1. Configure GCP credentials

Export the path to your downloaded service account JSON key:

```bash
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/your/key.json"
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Preview and apply the deployment

```bash
terraform plan -var="project=cloud-project-467815"
terraform apply -var="project=cloud-project-467815"
```

### 4. Verify deployment

After deployment completes, Terraform will output the public IP address of your VM. Open a browser and navigate to that IP. You should see a page displaying:

```html
Hello, World! from web-vm
```

You can also SSH into the VM via the GCP console and verify that Apache is running.

### 5. Tear down the deployment

To remove all deployed infrastructure:

```bash
terraform destroy -var="project=cloud-project-467815"
```
