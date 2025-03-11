# terraform-aws-infra
✅ Creates an AWS EC2 instance (Ubuntu) ✅ Deploys an S3 bucket ✅ Configures an Application Load Balancer (ALB) ✅ Uses Security Groups for access control


# Terraform AWS Infrastructure

## Overview
This Terraform configuration provisions an AWS infrastructure that includes:
- An **EC2 instance** (Ubuntu)
- An **S3 bucket**
- An **Application Load Balancer (ALB)**
- A **Security Group** for HTTP access

## Prerequisites
Before running Terraform, ensure you have:
- An AWS account
- Terraform installed (`terraform -v` to check)
- AWS CLI configured (`aws configure`)

## Files in This Repository
```
terraform-aws-infra/
│── provider.tf        # AWS provider configuration
│── variables.tf       # Input variables for Terraform
│── outputs.tf         # Outputs after deployment
│── main.tf            # AWS resources definition
│── terraform.tfvars   # Variable values (not committed to Git)
│── README.md          # Documentation
```

## Usage
### 1️⃣ Initialize Terraform
Run the following command to initialize Terraform:
```bash
terraform init
```

### 2️⃣ Preview the Changes
To see what will be created:
```bash
terraform plan
```

### 3️⃣ Apply the Configuration
To create the AWS infrastructure:
```bash
terraform apply -auto-approve
```

### 4️⃣ Verify the Resources
- Check the AWS EC2 console for the created instance.
- Navigate to S3 to see the new bucket.
- View the ALB in the AWS Load Balancer console.

### 5️⃣ Destroy the Infrastructure (Optional)
To remove all resources when no longer needed:
```bash
terraform destroy -auto-approve
```

## Next Steps
- Add **IAM roles** for better security.
- Implement **CloudWatch monitoring**.
- Configure **Auto Scaling Groups** for high availability.

---

