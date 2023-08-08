variable "ami" {
  default = "ami-03265a0778a880afb"
}
variable "security_groups" {
  default = "sg-09a378097912daee2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "zone_id" {
  default = "Z10273961PNDZQUR159DY"
}

variable "components" {
  default = {
    frontend  = {}
    catalogue = {}
    mongodb   = {}
    user      = {}
    redis     = {}
    cart      = {}
    mysql     = {}
    shipping  = {}
    payment   = {}
    rabbitmq  = {}
  }
}


resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.key, null )
  }
}

##resource "aws_route53_record" "record" {
##  for_each = var.components
##  zone_id = var.zone_id
##  name    = "frontend.bigetech.online"
##  type    = "A"
##  ttl     = 30
##  records = [aws_instance.Frontend.private_ip]
#}

#resource "aws_instance" "Mongodb" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-09a378097912daee2" ]
#
#  tags = {
#    Name = "Mongodb"
#  }
#}
#
#resource "aws_route53_record" "mongodb" {
#  zone_id = "Z10273961PNDZQUR159DY"
#  name    = "mongodb.bigetech.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.Mongodb.private_ip]
#}
#
#resource "aws_instance" "Catalogue" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-09a378097912daee2" ]
#
#  tags = {
#    Name = "Catalogue"
#  }
#}
#
#resource "aws_route53_record" "catalogue" {
#  zone_id = "Z10273961PNDZQUR159DY"
#  name    = "catalogue.bigetech.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.Catalogue.private_ip]
#}
#
#resource "aws_instance" "Redis" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-09a378097912daee2" ]
#
#  tags = {
#    Name = "Redis"
#  }
#}
#
#resource "aws_route53_record" "redis" {
#  zone_id = "Z10273961PNDZQUR159DY"
#  name    = "redis.bigetech.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.Redis.private_ip]
#}
#
#resource "aws_instance" "User" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-09a378097912daee2" ]
#
#  tags = {
#    Name = "User"
#  }
#}
#
#resource "aws_route53_record" "user" {
#  zone_id = "Z10273961PNDZQUR159DY"
#  name    = "user.bigetech.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.User.private_ip]
#}
#
#resource "aws_instance" "Cart" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-09a378097912daee2" ]
#
#  tags = {
#    Name = "Cart"
#  }
#}
#
#resource "aws_route53_record" "cart" {
#  zone_id = "Z10273961PNDZQUR159DY"
#  name    = "cart.bigetech.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.Cart.private_ip]
#}
#
#resource "aws_instance" "Mysql" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-09a378097912daee2" ]
#
#  tags = {
#    Name = "Mysql"
#  }
#}
#
#resource "aws_route53_record" "mysql" {
#  zone_id = "Z10273961PNDZQUR159DY"
#  name    = "mysql.bigetech.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.Mysql.private_ip]
#}
#
#resource "aws_instance" "Shipping" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-09a378097912daee2" ]
#
#  tags = {
#    Name = "Shipping"
#  }
#}
#
#resource "aws_route53_record" "shipping" {
#  zone_id = "Z10273961PNDZQUR159DY"
#  name    = "shipping.bigetech.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.Shipping.private_ip]
#}
#
#resource "aws_instance" "RabbitMQ" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-09a378097912daee2" ]
#
#  tags = {
#    Name = "RabbitMQ"
#  }
#}
#
#resource "aws_route53_record" "rabbitmq" {
#  zone_id = "Z10273961PNDZQUR159DY"
#  name    = "rabbitmq.bigetech.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.RabbitMQ.private_ip]
#}
#
#resource "aws_instance" "Payment" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-09a378097912daee2" ]
#
#  tags = {
#    Name = "Payment"
#  }
#}
#
#resource "aws_route53_record" "payment" {
#  zone_id = "Z10273961PNDZQUR159DY"
#  name    = "payment.bigetech.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.Payment.private_ip]
#}
#
#resource "aws_instance" "Dispatch" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-09a378097912daee2" ]
#
#  tags = {
#    Name = "Dispatch"
#  }
#}
#
#resource "aws_route53_record" "dispatch" {
#  zone_id = "Z10273961PNDZQUR159DY"
#  name    = "dispatch.bigetech.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.Dispatch.private_ip]
#}
