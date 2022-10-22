resource "aws_eks_cluster" "temp" {
  role_arn = "AKIA6N7ZB2FSRQRETCEA"
  name     = "aws-eks-k8s-jumia_phone_validator"

  tags = {
    archUUID = "75d35c9d-955e-405d-bbfe-b983ba7d48bb"
  }
}

resource "aws_eks_node_group" "eks_node_group_a" {
  node_role_arn = "AKIA6N7ZB2FSRQRETCEA"
  cluster_name  = "aws-eks-k8s-jumia_phone_validator"

  subnet_ids = [
    aws_subnet.aws-subnet-a.id,
  ]

  tags = {
    env      = "Production"
    archUUID = "7bddb60f-743f-4a13-8d7c-e45489245e29"
  }
}
