module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.2"

  name = "ezittaprivatfelho"
  cidr = "10.0.0.0/16"

  enable_nat_gateway = true
  enable_private_subnets = true
  tags = {
    env = "dev"
  }
  
  resource "aws_subnet" "private" {
  name              = "private-subnet"
  vpc_id            = module.vpc.vpc_id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-central-1a"
  }
  
  resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = module.vpc.private_route_table_ids[0]
  }
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