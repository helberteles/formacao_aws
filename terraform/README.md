## README.md para provisionamento de infraestrutura AWS com Terraform

**Objetivo:**

Este projeto visa provisionar uma instância EC2 ou outros serviços na AWS utilizando Terraform.

**Pré-requisitos:**

* Conta AWS com acesso programático configurado.
* Terraform instalado localmente.
* Git instalado localmente.

**Passos:**

1. **Criação de usuário e grupo AWS:**

   * Crie um grupo IAM chamado `group-formacao-aws`:
      ```bash
      aws iam create-group --group-name group-formacao-aws
      ```
   * Crie um usuário IAM chamado `user-formacao-aws`:
      ```bash
      aws iam create-user --user-name user-formacao-aws
      ```
   * Adicione o usuário ao grupo:
      ```bash
      aws iam add-user-to-group --group-name group-formacao-aws --user-name user-formacao-aws
      ```
   * Crie uma chave de acesso para o usuário e armazene-a em um local seguro:
      ```bash
      aws iam create-access-key --user-name user-formacao-aws
      ```

2. **Configuração do Terraform:**

   * Abra o prompt de comando e navegue até o diretório do projeto Terraform.
   * Configure o Terraform para usar as credenciais do usuário IAM:
      ```bash
      aws configure --profile user-formacao-aws
      ```
      * Responda às prompts com as informações da chave de acesso e região AWS.
   * Baixe as dependências do Terraform:
      ```bash
      terraform init
      ```
   * Inicialize o repositório Git:
      ```bash
      git init
      ```
   * Crie uma branch Git para o provisionamento:
      ```bash
      git checkout -b provisiona-ec2
      ```
   * Crie um arquivo `.gitignore` para ignorar arquivos do Terraform:
      ```
      **/.terraform/*
      .terraform
      ```

3. **Código Terraform:**

   * Crie um arquivo chamado `main.tf` com o seguinte conteúdo:

   ```terraform
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
     profile = "user-formacao-aws"  // Configure IAM profile
   }

   resource "aws_instance" "t3micro-formacao-aws" {
     ami           = "ami-02f3f602d23f1659d"  // AMI da instância
     instance_type = "t3.micro"
     tags = {
       ambiente = "dev"
       Name      = "tag-formacao-aws-dev"
     }
     vpc_security_group_ids = ["sg-018ffb83d58ea0311"]  // ID do grupo de segurança
     root_block_device {
       volume_size = 10  // Tamanho do disco (GB)
     }
   }
   ```

   * Este código Terraform define uma instância EC2 do tipo `t3.micro` utilizando a imagem `ami-02f3f602d23f1659d`. A instância terá uma tag `ambiente` com valor `dev` e outra tag `Name` com valor `tag-formacao-aws-dev`. Ela também será associada ao grupo de segurança com ID `sg-018ffb83d58ea0311` e terá um disco raiz de 10GB.

4. **Provisionamento da infraestrutura:**

   * Execute o comando Terraform para visualizar as alterações planejadas:
      ```bash
      terraform plan
      ```
   * Aplique as alterações para provisionar a infraestrutura:
      ```bash
      terraform apply
      ```
   * Verifique a infraestrutura provisionada:
      ```bash
      terraform show
      ```

5. **Destruição da infraestrutura:**

   * Para destruir a infraestrutura provisionada, execute o comando:
      ```bash
      terraform destroy
      ```