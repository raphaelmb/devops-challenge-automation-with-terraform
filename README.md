## DevOps Challenge

# Automation with Terraform

## Project Objective

The objective is to automate the process of creating and maintaining the environment for executing Mr. Fusion Solutions' Software projects.

## Project Assumptions

The following assumptions were made for the development of the project:

- Use Terraform as the infrastructure as code tool.
- The Kubernetes cluster must be created using the Elastic Kubernetes Service (EKS) from AWS.
- The project should be as simple and reusable as possible.
- Every time there's a change in the Terraform code in the main branch of the repository, the pipeline should be executed.
- There will only be one Kubernetes environment (development, staging, and production environments will be separated by namespace).

## Technologies Used in the Project

- [AWS](https://aws.amazon.com)
   - [S3](https://aws.amazon.com/s3)
   - [EKS](https://aws.amazon.com/eks)
- [AWS CLI](https://aws.amazon.com/cli/)
- [Terraform](https://www.terraform.io)
    - [AWS Provider](https://registry.terraform.io/providers/hashicorp/aws)
    - [AWS VPC Terraform module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws)
    - [AWS EKS Terraform module](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws)
- [GitHub](https://github.com)
    - [GitHub Actions](https://github.com/features/actions)

## Motivations for the Use of Each Technology

- **EKS** - Project requirement.
- **S3** - Adopted to store the current state of the Terraform project. Its use was defined because it's a service from AWS itself and has file versioning control.
- **GitHub Actions** - Project requirement.

## Instructions to Execute

The pipeline for creating or updating the project is executed whenever the Terraform code of the project is changed in the main branch.

## Configurations

The project configuration variables are in the `terraform.tfvars` file, except for the sensitive variables stored in GitHub Actions' secret manager.

**Variables stored in secrets:**

- `AWS_ACCESS_KEY_ID`: Access Key used to configure AWS CLI.
- `AWS_SECRET_ACCESS_KEY`: Secret Access Key used to configure AWS CLI.
- `AWS_BUCKET_NAME`: Name of the Bucket used to store the Terraform project state.
- `AWS_BUCKET_FILE`: Name of the file used to store the Terraform project state.

## Possible Project Evolutions

Some evolutions suggested for the project:

- Separate dev, staging, and prod environments using Terraform Workspace or Terraform Grunt for creation and management of these environments.
- Use DynamoDB along with S3 to prevent parallel execution of Terraform.

## Credits

This solution was based on the work by [Fabricio Veronez](https://github.com/fabricioveronez) at this [livestream](https://www.youtube.com/watch?v=OhV-pXgeVq4).
