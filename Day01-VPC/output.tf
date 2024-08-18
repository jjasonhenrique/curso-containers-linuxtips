output "ssm_vpc_id" {
  description = "ID do VPC armazenado no AWS Systems Manager Parameter Store. Este ID é usado para identificar o VPC onde os recursos serão provisionados."
  value       = aws_ssm_parameter.vpc.id
}

output "ssm_subnet_private_1a" {
  description = "ID da subnet privada na zona de disponibilidade 1a. Armazenado no AWS Systems Manager Parameter Store, usado para alocação de recursos que requerem isolamento dentro desta zona de disponibilidade."
  value       = aws_ssm_parameter.subnet_private_1a.id
}

output "ssm_subnet_private_1b" {
  description = "ID da subnet privada na zona de disponibilidade 1b. Armazenado no AWS Systems Manager Parameter Store, usado para alocação de recursos que requerem isolamento dentro desta zona de disponibilidade."
  value       = aws_ssm_parameter.subnet_private_1b.id
}

output "ssm_subnet_private_1c" {
  description = "ID da subnet privada na zona de disponibilidade 1c. Armazenado no AWS Systems Manager Parameter Store, usado para alocação de recursos que requerem isolamento dentro desta zona de disponibilidade."
  value       = aws_ssm_parameter.subnet_private_1c.id
}

output "ssm_subnet_public_1a" {
  description = "ID da subnet pública na zona de disponibilidade 1a. Este ID, proveniente do AWS Systems Manager Parameter Store, é utilizado para provisionar recursos acessíveis publicamente nesta zona."
  value       = aws_ssm_parameter.subnet_public_1a.id
}

output "ssm_subnet_public_1b" {
  description = "ID da subnet pública na zona de disponibilidade 1b. Este ID, proveniente do AWS Systems Manager Parameter Store, é utilizado para provisionar recursos acessíveis publicamente nesta zona."
  value       = aws_ssm_parameter.subnet_public_1b.id
}

output "ssm_subnet_public_1c" {
  description = "ID da subnet pública na zona de disponibilidade 1c. Este ID, proveniente do AWS Systems Manager Parameter Store, é utilizado para provisionar recursos acessíveis publicamente nesta zona."
  value       = aws_ssm_parameter.subnet_public_1c.id
}

output "ssm_subnet_database_1a" {
  description = "ID da subnet de bancos de dados na zona de disponibilidade 1a. Este ID é recuperado do AWS Systems Manager Parameter Store e usado para o provisionamento de instâncias de banco de dados nesta zona específica."
  value       = aws_ssm_parameter.subnet_database_1a.id
}

output "ssm_subnet_database_1b" {
  description = "ID da subnet de bancos de dados na zona de disponibilidade 1b. Este ID é recuperado do AWS Systems Manager Parameter Store e usado para o provisionamento de instâncias de banco de dados nesta zona específica."
  value       = aws_ssm_parameter.subnet_database_1b.id
}

output "ssm_subnet_database_1c" {
  description = "ID da subnet de bancos de dados na zona de disponibilidade 1c. Este ID é recuperado do AWS Systems Manager Parameter Store e usado para o provisionamento de instâncias de banco de dados nesta zona específica."
  value       = aws_ssm_parameter.subnet_database_1c.id
}