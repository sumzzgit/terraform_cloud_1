resource "aws_instance" "test-host" {
  ami                         = "ami-013e83f579886baeb"
  associate_public_ip_address = true
  instance_type               = "t2.micro"
  key_name                    = "sumzz-key"
  subnet_id                   = data.aws_subnet.pub-sub-01.id
  tags = {
    Name      = "bastion-host-test"
    provision = "terraform"
  }
}