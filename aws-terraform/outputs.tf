output "eks_cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.ecr.repository_url
}

output "region" {
  value = var.region
}

output "frontend_secret_name" {
  value = aws_secretsmanager_secret.frontend_secret.name
}