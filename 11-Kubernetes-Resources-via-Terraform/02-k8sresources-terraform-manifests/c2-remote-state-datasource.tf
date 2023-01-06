# Terraform Remote State Datasource
data "terraform_remote_state" "eks" {
  backend = "local"
  config = {
    path = "../../8-AWS-EKS-Cluster-Basics/01-ekscluster-terraform-manifests/terraform.tfstate"
   }
}


