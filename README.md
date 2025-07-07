# Terraform S3 Resume Hosting

This project provisions an AWS S3 bucket using Terraform to host a static website that displays a resume PDF. The site is publicly accessible and styled using a simple HTML layout with an iframe.

## 🔧 Project Structure

```
terraform-s3-resume/
└── terraform-s3-website/
    ├── DevSecops.pdf            # The resume file
    ├── error.html               # Custom error page
    ├── index.html               # Main HTML page displaying the PDF
    ├── main.tf                  # Terraform configuration to create the bucket
    ├── output.tf                # Terraform output for website URL
    ├── README.md                # Project description and usage instructions
    ├── terraform.tfvars         # Variable definitions
    ├── variables.tf             # Input variable declarations
    └── .terraform/              # Terraform plugin files (ignored)
```

## 🚀 How to Deploy

1. Initialize the project:
    ```bash
    terraform init
    ```

2. Validate and apply the infrastructure:
    ```bash
    terraform plan
    terraform apply
    ```

3. Upload the resume PDF and website HTML files:
    ```bash
    aws s3 cp index.html s3://<bucket-name>/
    aws s3 cp DevSecops.pdf s3://<bucket-name>/
    ```

4. Access your resume via the output URL:
    ```bash
    terraform output website_url
    ```

## 🧾 .gitignore (Important)

Make sure your `.gitignore` includes:

```
.terraform/
*.tfstate
*.tfstate.backup
terraform.tfvars
*.log
*.pdf
```

## 🌐 Hosting

Your resume will be publicly accessible at the S3 static website endpoint:

```
http://<your-bucket-name>.s3-website-<region>.amazonaws.com
```

## 📫 Contact

Created by Lawrence. Powered by Terraform & AWS.
