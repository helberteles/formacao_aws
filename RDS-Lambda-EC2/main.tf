terraform {
    required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
    }
}
    required_version = ">= 1.2.0"
}


# Criação do grupo de usuários
resource "aws_iam_group" "example_group" {
    name = "example-group"
}

# Criação do usuário
resource "aws_iam_user" "example_user" {
    name = "example-user"
}

# Associação do usuário ao grupo
resource "aws_iam_user_group_membership" "example_membership" {
    user = aws_iam_user.example_user.name
    group = aws_iam_group.example_group.name
}


# Criação de uma política gerenciada para o grupo
resource "aws_iam_policy" "example_policy" {
    name = "example-policy"
    description = "A test policy"

# Política JSON (exemplo)
    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
    {
        Action   = "s3:ListBucket"
        Effect   = "Allow"
        Resource = "*"
    }
            ]
    })
}


provider "aws" {
    region  = "us-east-1"
    profile = "user-formacao-aws"// configure iam profile
}




resource "aws_instance" "t3micro-formacao-aws" {
    ami = "ami-02f3f602d23f1659d" //definida a imagem a ser utilizada
    instance_type = "t3.micro"
    tags = {
    ambiente = "dev"
    Name = "tag-formacao-aws-dev"
}
vpc_security_group_ids = ["sg-018ffb83d58ea0311"]
    root_block_device {
        volume_size = 10 //volume do disco
    }
}
