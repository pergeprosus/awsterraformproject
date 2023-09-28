
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpn_gateway_id" {
  value = module.vpn_gateway.vpn_gateway_id
}

output "ec2_instance_id" {
  value = module.ec2.ec2_instance_id
}
