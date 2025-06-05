data "aws_availability_zones" "available" {}
data "aws_caller_identity" "current" {}

locals {
  lab_role_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/LabRole"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet" {
  count             = 2
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
  vpc_id            = aws_vpc.main.id
  availability_zone = data.aws_availability_zones.available.names[count.index]
}

resource "aws_eks_cluster" "eks" {
  name     = var.eks_cluster_name
  role_arn = local.lab_role_arn

  vpc_config {
    subnet_ids = aws_subnet.subnet[*].id
  }
}

resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "default"
  node_role_arn   = local.lab_role_arn

  subnet_ids = aws_subnet.subnet[*].id

  scaling_config {
    desired_size = 1
    max_size     = 3
    min_size     = 1
  }

  instance_types = ["t3.xlarge"]
}

resource "aws_ecr_repository" "ecr" {
  name = var.ecr_name
}

resource "aws_secretsmanager_secret" "secret" {
  name = var.secrets_manager_name
}