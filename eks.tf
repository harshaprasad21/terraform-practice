module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "~> 20.0"
  cluster_name    = var.cluster_name
  cluster_version = "1.34"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.public_subnets

  cluster_endpoint_public_access  = true

  eks_managed_node_groups = {
    hospital_nodes = {
      desired_capacity = 2
      max_capacity     = 5
      min_capacity     = 1

      instance_types   = ["t3.medium"]
    }
  }

}


 