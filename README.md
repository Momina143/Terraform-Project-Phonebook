# Phonebook Web Application --- Terraform Deployment on AWS EC2

## Overview

This project delivers an automated Terraform deployment of a Python
Flask--based Phonebook web application. The goal is to provision AWS
infrastructure using Infrastructure as Code (IaC), deploy the
application through an EC2 instance, and fully automate server bootstrap
using a user-data bash script. The result is a reproducible, cloud‑ready
environment demonstrating Terraform, AWS services, and automated
provisioning.

## Architecture

The deployment consists of: - **AWS EC2 Instance** (Amazon Linux 2) -
**Security Groups** for HTTP/SSH access\
- **IAM Role (optional depending on configuration)**\
- **User-data script** for automatic installation of Python,
dependencies, and application launch\
- **Phonebook Flask application** pulled directly to the EC2 instance

Terraform manages all AWS resources required to host the Phonebook app.

## Key Components

### 1. Terraform Configuration

Located in the `tf-files/` directory: - `provider.tf` --- AWS provider
configuration\
- `main.tf` --- EC2 instance creation and core infrastructure\
- `variables.tf` --- Input parameters for flexible deployments\
- `sec-gr.tf` --- Security group rules for HTTP and SSH\
- `data.tf` --- Data sources used in the configuration\
- `outputs.tf` --- Displays the public application URL after deployment

### 2. User-Data Script (Automated Bootstrap)

The included `userdata.sh` script: - Updates system packages\
- Installs Python3 and pip\
- Clones the Phonebook application\
- Installs required Python dependencies\
- Starts the Flask application on port 80

This ensures the EC2 instance is fully configured at launch without
manual intervention.

### 3. Phonebook Flask Application

Located in the `phonebook/` directory: - `app.py` --- The core
application\
- `templates/` --- HTML templates\
- `static/` --- Static assets\
- `requirements.txt` --- Python package dependencies

The app supports add/update/delete operations for storing phonebook
contacts.

## Project Structure

    .
    ├── phonebook/
    │   ├── app.py
    │   ├── requirements.txt
    │   ├── static/
    │   └── templates/
    │
    └── tf-files/
        ├── main.tf
        ├── provider.tf
        ├── variables.tf
        ├── sec-gr.tf
        ├── data.tf
        ├── outputs.tf
        └── userdata.sh

## Deployment Instructions

### 1. Initialize Terraform

    terraform init

### 2. Review the Resource Plan

    terraform plan

### 3. Deploy to AWS

    terraform apply

Once the deployment is complete, the output will include the EC2 public
IP or URL where the Phonebook application is accessible.

### 4. Destroy Resources (Optional)

    terraform destroy

## Skills Demonstrated

-   Terraform IaC development\
-   AWS EC2 provisioning\
-   Automated server configuration using user-data\
-   Security group design\
-   Deployment of Python Flask applications\
-   Git-based workflow\
-   Cloud-based environment setup for web applications
