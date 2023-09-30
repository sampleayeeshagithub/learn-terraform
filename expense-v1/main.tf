resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00493eacf9da2075a"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0073724138YO075ETFE9"
  name    = "frontend.ayeeshadevops75.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.frontend.private_ip ]
}

resource "aws_instance" "backend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00493eacf9da2075a"]

  tags = {
    Name = "backend"
  }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z0073724138YO075ETFE9"
  name    = "backend.ayeeshadevops75.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.backend.private_ip ]
}

resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00493eacf9da2075a"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0073724138YO075ETFE9"
  name    = "mysql.ayeeshadevops75.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.mysql.private_ip ]
}
