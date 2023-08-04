resource "aws_instance" "Frontend" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "Frontend"
  }
}

resource "aws_instance" "Mongodb" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "Mongodb"
  }
}

resource "aws_instance" "Catalogue" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "Catalogue"
  }
}

resource "aws_instance" "Redis" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "Redis"
  }
}

resource "aws_instance" "User" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "User"
  }
}

resource "aws_instance" "Cart" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "Cart"
  }
}

resource "aws_instance" "Mysql" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "Mysql"
  }
}

resource "aws_instance" "Shipping" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "Shipping"
  }
}

resource "aws_instance" "RabbitMQ" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "RabbitMQ"
  }
}

resource "aws_instance" "Payment" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "Payment"
  }
}

resource "aws_instance" "Dispatch" {
  ami           = ami-03265a0778a880afb
  instance_type = "t2.micro"
  vpc_security_group_ids = sg-09a378097912daee2

  tags = {
    Name = "Dispatch"
  }
}