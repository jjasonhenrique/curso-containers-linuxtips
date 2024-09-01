variable "project_name" {
  type        = string
  default     = ""
  description = "Name of project"
}

variable "region" {
  type        = string
  default     = ""
  description = "Region of AWS"
}

### SSM VPC ####

variable "ssm_vpc_id" {
  type        = string
  default     = ""
  description = "Value ssm vpc id"
}

variable "ssm_public_subnet_1a" {
  type        = string
  default     = ""
  description = "Value ssm public subnet 1a"
}

variable "ssm_public_subnet_1b" {
  type        = string
  default     = ""
  description = "Value ssm public subnet 1b"
}

variable "ssm_public_subnet_1c" {
  type        = string
  default     = ""
  description = "Value ssm public subnet 1c"
}

variable "ssm_private_subnet_1a" {
  type        = string
  default     = ""
  description = "Value ssm private subnet 1a"
}

variable "ssm_private_subnet_1b" {
  type        = string
  default     = ""
  description = "Value ssm private subnet 1b"
}

variable "ssm_private_subnet_1c" {
  type        = string
  default     = ""
  description = "Value ssm private subnet 1c"
}

#### Load Balancer ####

variable "load_balancer_internal" {
  type        = bool
  default     = false
  description = "Habilita load balcener interno ou externo"
}

variable "load_balancer_type" {
  type        = string
  default     = ""
  description = "Type of Load Balancer (Applicattion or Network)"
}


### ECS General ####

variable "nodes_ami" {
  type        = string
  default     = ""
  description = "ID da AMI - https://docs.aws.amazon.com/pt_br/systems-manager/latest/userguide/parameter-store-public-parameters-ecs.html"
}

variable "nodes_instance_type" {
  type        = string
  default     = ""
  description = "Type od instances"
}

variable "node_volume_size" {
  type        = string
  default     = ""
  description = "Volume Size of EBS"
}

variable "node_volume_type" {
  type        = string
  default     = ""
  description = "Type of EBS (GP3 or others)"
}

variable "cluster_on_demand_min_size" {
  type        = string
  default     = ""
  description = "Minimum of instances ASG On-Demand"
}

variable "cluster_on_demand_max_size" {
  type        = string
  default     = ""
  description = "Maximum of instances ASG On-Demand"
}

variable "cluster_on_demand_desired_size" {
  type        = string
  default     = ""
  description = "Desired of instances ASG On-Demand"
}

variable "cluster_spot_min_size" {
  type        = string
  default     = ""
  description = "Minimum of instances ASG Spot"
}

variable "cluster_spot_max_size" {
  type        = string
  default     = ""
  description = "Maximum of instances ASG Spot"
}

variable "cluster_spot_desired_size" {
  type        = string
  default     = ""
  description = "Desired of instances ASG Spot"
}