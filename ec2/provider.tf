variable region {
  type        = string
  default     = "eu-west-1"
  description = "Region where the resources will be deployed"
}

terraform{
    backend s3 {}
}


provider "aws"{
    region = var.region
}
