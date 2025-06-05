output "eks_cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.ecr.repository_url
}

output "secret_arn" {
  value = aws_secretsmanager_secret.secret.arn
}

output "region" {
  value = var.region
}