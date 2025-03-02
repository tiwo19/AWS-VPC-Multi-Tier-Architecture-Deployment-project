resource "aws_instance" "web_server" {
    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.micro"
    subnet_id = var.subnet_id
    security_groups = [var.sgec2_1]

    user_data = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Hello from $(hostname)" > /var/www/html/index.html
 EOF

  tags = { Name = "Web Server" }
}

