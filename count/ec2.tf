resource "aws_security_group" "allow_ssh_terraform" {
    name = "allow-sshh"
    description =  "Allow port number 22 for ssh access"

    # usually we allow everything in agress(nothing but outgoing traffic)
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # allow from everyone
    ipv6_cidr_blocks = ["::/0"]
  }
  
  tags = merge(
        var.common_tags,
        {
        Name = "allow-sshh"
        }
    )
}
resource "aws_instance" "terraform" {
    count = length(var.instance_names) # here count is 3, we can give count = 3 also
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

    tags = merge(
        var.common_tags,
        {
        Name = var.instance_names[count.index]
        }
    )
}

