output "eks_cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "region" {
  value = var.region
}