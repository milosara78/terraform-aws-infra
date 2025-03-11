resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Ubuntu AMI (Change based on region)
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-EC2"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}

resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow inbound HTTP"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_lb" "web_alb" {
  name               = "web-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.web_sg.id]
  subnets            = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]  # Change with actual subnet IDs
}