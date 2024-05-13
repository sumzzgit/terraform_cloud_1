# import vpc details 
data "aws_vpc" "sumzz_vpc" {
  id = var.vpc_id
}

# import public subnet details 
data "aws_subnet" "pub-sub-01" {
  id = var.subnet_id
}

#import security group details 
data "aws_security_groups" "test" {
  tags = {
    Name = "pub-sg-1"
  }
}

#updated this comment to test terraform cloud trigger 
