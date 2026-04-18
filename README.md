# unlocka-devops
End-to-end Azure DevOps automation using Terraform, Ansible, and Docker.
# 🚀 Unlocka DevOps Infrastructure (Azure + Terraform)

This project provisions a production-ready Azure cloud infrastructure using Terraform. It follows Infrastructure as Code (IaC) principles to automate cloud resource provisioning and is designed to integrate with Ansible for configuration management and Docker for containerized workloads. Kubernetes integration is planned for future scalability.

---

## 🚀 Project Overview

This repository automates the deployment of:

- Azure Resource Group  
- Virtual Network (VNet)  
- Subnet  
- Network Security Group (NSG)  
- Public IP  
- Network Interface (NIC)  
- Linux Virtual Machine (Ubuntu 22.04 LTS)

The infrastructure is configured for secure SSH-based access and supports HTTP (port 80) for web applications.

---

## 🏗️ Architecture

- **VNet:** 10.0.0.0/16  
- **Subnet:** 10.0.1.0/24  
- **NSG Rules:**
  - SSH (22)
  - HTTP (80)
- Ubuntu Linux VM (22.04 LTS)
- Public IP for remote access

---

## 🔐 Security

- Password authentication disabled  
- SSH key-based authentication enforced  
- Network Security Group controls inbound traffic  
- Least-privilege networking principles applied  

---

## ⚙️ Technologies Used

- Terraform  
- Azure Cloud (AzureRM Provider)  
- Linux (Ubuntu 22.04 LTS)  
- SSH Key Authentication  
- (Upcoming) Ansible  
- (Upcoming) Docker  
- (Future) Kubernetes  

---

## 📦 Prerequisites

Ensure you have the following installed:

- Terraform  
- Azure CLI (`az login`)  
- SSH key pair:
  - `~/.ssh/id_rsa`
  - `~/.ssh/id_rsa.pub`

---

## 🚀 Deployment Steps

### 1. Initialize Terraform
```bash
terraform init
2. Validate configuration
terraform validate
3. Format code
terraform fmt
4. Plan deployment
terraform plan
5. Apply infrastructure
terraform apply
🔗 SSH Access

After deployment, connect to the virtual machine:

ssh -i ~/.ssh/id_rsa azureuser@<public-ip>

Replace <public-ip> with the Terraform output value.

📤 Outputs

Terraform provides:

Public IP address
Virtual Machine name
Resource Group name
Virtual Network (VNet) and Subnet details
Network Interface (NIC) ID
🧭 Future Enhancements
Ansible automation for VM configuration
Docker container deployment
CI/CD pipeline using GitHub Actions
Kubernetes cluster integration

👨‍💻 Author

DevOps Infrastructure Project – Unlocka