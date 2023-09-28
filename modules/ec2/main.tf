
resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = var.ec2_key_name
  tags = {
    Name = "my_instance"
  }
}

resource "aws_security_group" "my_security_group" {
  name        = "my_security_group"
  description = "My security group"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
