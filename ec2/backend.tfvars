bucket = "liimrasoft-terraform-state-jenkins-new"
key = "liimra/terraform.tfstate"
region = "eu-west-1"
dynamodb_table = "liimrasoft-terraform-state-jenkins-dynamodb-table"


# terraform init -backend=true -backend-config=backend.tfvars