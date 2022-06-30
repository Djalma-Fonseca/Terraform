resource "aws_security_group" "sg" {
    
    name = "acesso-ssh"
    description = "acesso-ssh"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "acesso-ssh"
    }


}