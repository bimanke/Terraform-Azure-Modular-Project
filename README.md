
🚀 **Terraform Azure Infrastructure**
📌 **Overview**

This repository contains a modular Terraform project to deploy infrastructure on Microsoft Azure.
The setup follows best practices with a parent-child module structure to keep the code clean, reusable, and scalable.

🔹 Key highlights:
✔️ Fully modular design
✔️ Beginner-friendly structure
✔️ Easy to extend and customize

🏗️ Architecture
🔹 Resources Created

📦 **Resource Group** (RG)

💾 **Storage Account**

🌐 **Virtual Network** (VNet)

🛠️ **Subnet**

🔐 **Network Security Group** (NSG)

📡 **Network Interface Card** (NIC)

💻 **Virtual Machine** (VM)

⚙️ **Prerequisites**

✅ Terraform
 >= 1.3.0
✅ Azure CLI

✅ Active Azure Subscription

**Login before deployment**:

az login

🚀 Getting Started
1️⃣ Clone the Repository
git clone https://github.com/<your-username>/terraform-azure-project.git
cd terraform-azure-project

2️⃣ Initialize Terraform
terraform init

3️⃣ Validate Configuration
terraform validate

4️⃣ See the Plan
terraform plan

5️⃣ Apply the Configuration
terraform apply -auto-approve

📝 **Variables**

📤 **Outputs**

After deployment, Terraform will output:

📦**Resource Group Name**

💾 **Storage Account Name**

🌐 **VNet Name**

🛠️ **Subnet ID**

🔐 **NSG ID**

📡 **NIC ID**

💻 **VM ID**

🔐 **Security Best Practices**

⚠️ Always change the default admin_password before applying.
⚠️ Do not push sensitive values (like passwords) to GitHub.
⚠️ Use Azure Key Vault for production secrets.
⚠️ Ensure Storage Account name is globally unique.



