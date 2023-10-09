# Terraform Workspace Environments

This repository demonstrates a basic example of using Terraform Workspaces for efficiently managing environments in the
infrastructure as code (IaC) projects.

# 1. Need for Workspaces

- Let's say there's a scenario where we need an EC2 instance.
- Instead of creating an EC2 instance separately every time, we can pack it into a module and just reuse it.
- But what if we need to create an EC2 instance across multiple environments (dev, stage, prod)?
	- Within the modules folder, we can create multiple Terraform variable files such as:
		- `dev.tfvars`
		- `stage.tfvars`
		- `prod.tfvars`
	- However, the problem here is that all of these three files are going to use the same `.tfstate` file.
	- This means if you update `dev.tfvars` for example, it will update `.tfstate`, which will also trigger
		updating `stage.tfvars` and `prod.tfvars`, and thus update the same resources.
	- By using workspaces, we can maintain a separate state file for each of the workspaces.

## 1.1. Definition

![workspaces-definition.svg](misc/workspaces-definition.svg)

- Workspaces separate work areas for your Terraform projects.
- Allows us to isolate and manage your infrastructure configurations, making it easier to handle multiple environments
	like development, testing and production.
