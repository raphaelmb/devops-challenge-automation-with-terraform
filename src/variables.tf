variable "aws_region" {
  description = "AWS region resources"
  type        = string
  nullable    = false
}

variable "aws_vpc_name" {
  description = "AWS vpc name"
  type        = string
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "AWS vpc cidr block"
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "AWS vpc availability zones"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "AWS vpc private subnets"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "AWS vpc public subnets"
  type        = set(string)
  nullable    = false
}

variable "aws_eks_name" {
  description = "AWS eks name"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "AWS eks version"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "AWS eks managed node groups instance types"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "AWS project tags"
  type        = map(any)
  nullable    = false
}