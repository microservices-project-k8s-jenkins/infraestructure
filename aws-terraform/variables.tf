variable "region" {
  description = "AWS region"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
}

variable "ecr_name" {
  description = "Name of the ECR repository"
}

variable "frontend_secret_text" {
  description = "The secret text for the frontend application"
  type        = string
  sensitive   = true
}