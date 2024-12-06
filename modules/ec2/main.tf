
resource "aws_instance" "ec2" {
  associate_public_ip_address = false
  subnet_id                   = var.pri_sub_id
  instance_type               = "t2.micro"
  ami                         = var.ami
  vpc_security_group_ids      = [var.ec2_sg_id]
  iam_instance_profile = var.iam_instance_profile

  key_name = var.keyname
  tags = {
    Name = "ec2-${var.project_name}"
  }
}
