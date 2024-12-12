# Terraform Project Documentation

## Overview
This project sets up an AWS infrastructure using Terraform. It includes the creation of an S3 bucket for storing the Terraform state file, a custom VPC, and an EC2 instance with appropriate security group settings.

## Project Structure
- `main.tf`: Contains the main Terraform configuration for resources.
- `variables.tf`: Defines necessary variables for the project.
- `terraform.tfvars`: Contains actual values for the variables.
- `backend.tf`: Configures the Terraform backend for state management.
- `README.md`: Documentation for the project.

## Prerequisites
- AWS Account: You need an AWS account to create resources.
- Terraform: Install Terraform on your local machine. Follow the [official installation guide](https://www.terraform.io/downloads.html).

## Setup Instructions
1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd terraform-project
   ```

2. **Configure AWS Credentials**
   Ensure your AWS credentials are configured. You can set them up using the AWS CLI:
   ```bash
   aws configure
   ```

3. **Modify Variables**
   Update the `terraform.tfvars` file with your specific values, such as the region and AMI ID.

4. **Initialize Terraform**
   Run the following command to initialize the Terraform project:
   ```bash
   terraform init
   ```

5. **Plan the Deployment**
   Generate an execution plan to see what resources will be created:
   ```bash
   terraform plan
   ```

6. **Apply the Configuration**
   Apply the Terraform configuration to create the resources:
   ```bash
   terraform apply
   ```

7. **Access the EC2 Instance**
   Once the resources are created, you can access the EC2 instance using SSH.

## Cleanup
To remove all resources created by Terraform, run:
```bash
terraform destroy
```

## Additional Notes
- Ensure that you have the necessary permissions in your AWS account to create the resources defined in this project.
- Sensitive data should not be pushed to GitHub. Use `.gitignore` to exclude files like `terraform.tfvars` if it contains sensitive information.