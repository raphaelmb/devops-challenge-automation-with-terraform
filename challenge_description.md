# Technical Challenge: Implementation of a Kubernetes Cluster with Terraform and Automation via GitHub Actions

## This challenge was solved in the following live stream:

[Live Stream](https://www.youtube.com/watch?v=OhV-pXgeVq4)

## Context
Mr. Fusion Solutions, an innovative technology startup in the energy field, is seeking to expand its operations and needs to improve the quality and efficiency of its software development and deployment processes. The company wishes to implement a scalable and robust foundation using Kubernetes, capable of supporting rapid growth and the need for continuous updates to its applications.
And it has been decided that you will be the person to deliver this scalable solution to Mr. Fusion Solutions.

## Objective

The objective of this challenge is to create a project to provision a Kubernetes cluster on AWS using Amazon EKS (Elastic Kubernetes Service) in an automated manner. After creating the cluster, you should configure a pipeline using GitHub Actions that automates the process of creating and maintaining this Kubernetes cluster. The goal is to support the scaling of various microservices for Mr. Fusion Solutions.

## Project Steps

1. **Creation of the Kubernetes Cluster:**
   - Use Terraform to create a Kubernetes cluster using Amazon EKS.
   - The cluster must have at least two worker nodes.

2. **Pipeline with GitHub Actions:**
   - Develop a pipeline using GitHub Actions.
   - The pipeline should run whenever there is a change in the Terraform project base.

3. **Documentation:**
   - Document the creation process and the necessary requirements to initialize and manage the cluster.
   - Include possible improvements in the project.

## Evaluation Criteria

- Implementation Mode: The Kubernetes cluster must be initialized correctly and meet the requirements.
- Code Quality: The Terraform code must be clear, well-organized, and follow the best practices of development and reuse.
- Pipeline Functionality: The pipeline should work without errors, performing all specified tasks.
- Documentation: The documentation must be comprehensive, clear, and provide all the necessary details for other professionals to reproduce the process.