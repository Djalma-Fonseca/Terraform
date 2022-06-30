resource  "aws_instance" "dev-teste" {
    count = 3
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name

    tags = {
        Name = "dev-teste${count.index}"
    }
    vpc_security_group_ids = [aws_security_group.sg.id]
}

resource  "aws_instance" "dev-teste-4" {
    
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name

    tags = {
        Name = "dev-teste-4"
    }
    vpc_security_group_ids = [aws_security_group.sg.id]
    depends_on = [aws_s3_bucket.s3-teste]
}
