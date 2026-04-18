# unlocka-devops
End-to-end Azure DevOps automation using Terraform, Ansible, and Docker.
# Unlocka DevOps Infrastructure (Azure + Terraform)

This project provisions a production-ready Azure cloud infrastructure using Terraform. It is designed as an Infrastructure as Code (IaC) foundation for automated deployments and future configuration management using Ansible and containerization with Docker.

---

# 🚀 Project Overview

This repository automates the deployment of:

- Azure Resource Group
- Virtual Network (VNet)
- Subnet
- Network Security Group (NSG)
- Public IP
- Network Interface (NIC)
- Linux Virtual Machine (Ubuntu 22.04 LTS)

The infrastructure is configured for secure SSH-based access and exposes HTTP (port 80) for web workloads.

---

## 🏗️ Architecture

- VNet: 10.0.0.0/16  
- Subnet: 10.0.1.0/24  
- NSG Rules:
  - SSH (22)
  - HTTP (80)
- Ubuntu Linux VM
- Public IP for remote access

---

## 🔐 Security

- Password authentication is disabled
- SSH key-based authentication is enforced
- NSG restricts inbound traffic
- Least-privilege network design

---

## ⚙️ Technologies Used

- Terraform
- Azure Cloud (AzureRM Provider)
- Linux (Ubuntu 22.04 LTS)
- SSH Key Authentication
- (Upcoming) Ansible
- (Upcoming) Docker

---

## 📦 Prerequisites

Before running this project, ensure you have:

- Terraform installed
- Azure CLI installed and authenticated (`az login`)
- SSH key pair generated:
  - `~/.ssh/id_rsa`
  - `~/.ssh/id_rsa.pub`

---

## 🚀 Deployment Steps

### 1. Initialize Terraform
```bash
terraform init
terraform validate
terraform fmt
terraform plan
terraform apply

SSH Access
After deployment:
ssh -i ~/.ssh/id_rsa azureuser@<public-ip>

📤 Outputs

Terraform provides:

Public IP address
VM name
Resource Group
VNet & Subnet details
NIC ID