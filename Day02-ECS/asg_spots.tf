resource "aws_autoscaling_group" "spot" {
  name_prefix = format("%s-spot", var.project_name)

  vpc_zone_identifier = [
    data.aws_ssm_parameter.private_subnet_1a.value,
    data.aws_ssm_parameter.private_subnet_1b.value,
    data.aws_ssm_parameter.private_subnet_1c.value
  ]

  min_size         = var.cluster_spot_min_size
  max_size         = var.cluster_spot_max_size
  desired_capacity = var.cluster_spot_desired_size

  launch_template {
    id      = aws_launch_template.spot.id
    version = aws_launch_template.spot.latest_version
  }

  tag {
    key                 = "Name"
    value               = format("%s-spot", var.project_name)
    propagate_at_launch = true
  }

  tag {
    key                 = "AmazonECSManaged"
    value               = true
    propagate_at_launch = true
  }
}


resource "aws_ecs_capacity_provider" "spot" {
  name = format("%s-spot", var.project_name)

  auto_scaling_group_provider {
    auto_scaling_group_arn = aws_autoscaling_group.spot.arn

    managed_scaling {
      maximum_scaling_step_size = 10
      minimum_scaling_step_size = 1
      status                    = "ENABLED"
      target_capacity           = 90
    }
  }
}