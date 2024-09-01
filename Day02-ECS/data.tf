data "aws_ssm_parameter" "vpc" {
  name = var.ssm_vpc_id
}

data "aws_ssm_parameter" "public_subnet_1a" {
  name = var.ssm_public_subnet_1a
}

data "aws_ssm_parameter" "public_subnet_1b" {
  name = var.ssm_public_subnet_1b
}

data "aws_ssm_parameter" "public_subnet_1c" {
  name = var.ssm_public_subnet_1c
}

data "aws_ssm_parameter" "private_subnet_1a" {
  name = var.ssm_private_subnet_1a
}

data "aws_ssm_parameter" "private_subnet_1b" {
  name = var.ssm_private_subnet_1b
}

data "aws_ssm_parameter" "private_subnet_1c" {
  name = var.ssm_private_subnet_1c
}