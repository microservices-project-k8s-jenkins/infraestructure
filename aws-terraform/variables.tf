variable "region" {
  description = "AWS region"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
}

variable "ecr_name" {
  description = "Name of the ECR repository"
}

variable "secrets_manager_name" {
  description = "The name of the Secrets Manager secret"
}