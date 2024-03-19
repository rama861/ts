resource "aws_instance" "Penguin" {
  ami                         = "ami-04175dfed7619fb38"
  instance_type               = "t3.micro"
  key_name                    = "JG"
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  user_data                   = file("data1.sh")
  tags = {
    name = "Penguin-app"
  }
}
