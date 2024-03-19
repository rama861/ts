resource "aws_instance" "Penguin" {
  ami                         = "ami-02d7fd1c2af6eead0"
  instance_type               = "t2.micro"
  key_name                    = "ram"
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  user_data                   = file("data1.sh")
  tags = {
    name = "Penguin-app"
  }
}
