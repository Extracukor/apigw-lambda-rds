module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.2"
}

/*module "apigateway-v2" {
  source  = "terraform-aws-modules/apigateway-v2/aws"
  version = "3.1.0"
}

module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "6.4.0"
  # insert the 1 required variable here
}

module "iam" {
  source  = "terraform-aws-modules/iam/aws"
  version = "5.35.0"
}

module "lambda" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "7.2.1"
}

module "waf" {
  source  = "cloudposse/waf/aws"
  version = "1.4.0"
  # insert the 1 required variable here
}*/