
resource "aws_vpn_gateway" "my_vpn_gateway" {
  tags = {
    Name = "my_vpn_gateway"
  }
}

resource "aws_vpn_gateway_attachment" "my_vpn_gateway_attachment" {
  vpc_id         = module.vpc.vpc_id
  vpn_gateway_id = aws_vpn_gateway.my_vpn_gateway.id
}
