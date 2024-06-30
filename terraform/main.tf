terraform {
    required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
    }
}
    required_version = ">= 1.2.0"
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
