##  Desafio RDS: Crie e gerencie seu banco de dados na nuvem!

**Objetivo:**

Neste desafio, você vai colocar a mão na massa e criar um banco de dados relacional na nuvem usando o Amazon Relational Database Service (RDS). Ao longo do caminho, você vai aprender a:

* **Criar uma instância RDS PostgreSQL:** Configure e provisione sua instância RDS, definindo os parâmetros essenciais para atender às suas necessidades.
* **Conectar-se ao banco de dados com DBeaver:** Estabeleça uma conexão segura entre seu ambiente local e a instância RDS recém-criada utilizando o DBeaver, uma ferramenta popular de gerenciamento de bancos de dados.
* **Criar uma tabela no banco de dados:** Crie uma tabela dentro do seu banco de dados PostgreSQL, definindo suas colunas, tipos de dados e restrições.

**Recursos:**

Para completar este desafio, você precisará de:

* Uma conta AWS ativa com acesso ao console de gerenciamento.
* Software DBeaver instalado em sua máquina local.

**Materiais de estudo:**

Para se aprofundar nos tópicos abordados neste desafio, consulte os seguintes materiais:

* **Formação AWS 4.0:** [https://pay.hotmart.com/G66697451J?off=9jtzbkwk&checkoutMode=10&sck=geral-19h30&bid=1693180800299](https://pay.hotmart.com/G66697451J?off=9jtzbkwk&checkoutMode=10&sck=geral-19h30&bid=1693180800299)
* **RDS: Introdução + Tópicos:** [https://www.udemy.com/es/topic/amazon-rds/](https://www.udemy.com/es/topic/amazon-rds/)
* **RDS: Criando e configurando uma instância com PostgreSQL:** [https://purchase.hotmart.com/](https://purchase.hotmart.com/)
* **RDS: Alocação On Demand e Reservada:** [https://help.hotmart.com/en/article/360005125971/how-to-set-up-the-plus-access-on-hotmart-club-](https://help.hotmart.com/en/article/360005125971/how-to-set-up-the-plus-access-on-hotmart-club-)
* **RDS: Gerenciando Backups e Snapshots:** [https://www.youtube.com/watch?v=ek4nC4Wr-lA](https://www.youtube.com/watch?v=ek4nC4Wr-lA)
* **RDS: Removendo os recursos alocados:** [https://answers.microsoft.com/en-us/windows/forum/all/how-can-i-remove-rds-per-user-cals-which-are/56a08080-9434-43b2-9ae9-d0ee65271e97](https://answers.microsoft.com/en-us/windows/forum/all/how-can-i-remove-rds-per-user-cals-which-are/56a08080-9434-43b2-9ae9-d0ee65271e97)
* **RDS: O que é o Multi-AZ e seu funcionamento de forma prática:** [https://aws.amazon.com/blogs/database/best-practices-for-converting-a-single-az-amazon-rds-instance-to-a-multi-az-instance/](https://aws.amazon.com/blogs/database/best-practices-for-converting-a-single-az-amazon-rds-instance-to-a-multi-az-instance/)

**Instruções:**

Siga as instruções detalhadas nos links da Formação AWS para cada etapa do desafio:

**1. Crie seu banco de dados PostgreSQL no RDS:**

* Acesse o console do Amazon RDS.
* Selecione a opção "Criar banco de dados".
* Escolha "PostgreSQL" como mecanismo de banco de dados.
* Configure os detalhes da instância, como nome, tipo de instância, tamanho da instância e região.
* Defina as configurações de rede e segurança para sua instância.
* Crie um nome de usuário e senha para acesso ao banco de dados.
* Revise e confirme as configurações antes de criar a instância.

**2. Conecte-se ao banco de dados com DBeaver:**

* Abra o DBeaver em sua máquina local.
* Crie uma nova conexão de banco de dados.
* Selecione "PostgreSQL" como tipo de conexão.
* Insira o endpoint da sua instância RDS, o nome de usuário e a senha criados anteriormente.
* Teste a conexão para garantir que esteja funcionando corretamente.

**3. Crie uma tabela no banco de dados:**

* No DBeaver, navegue até sua instância RDS recém-conectada.
* Expanda o nó "Bancos de dados" e selecione o banco de dados PostgreSQL que você criou.
* Clique com o botão direito do mouse no nó do banco de dados e selecione "Criar tabela".
* Defina o nome da tabela, as colunas, seus tipos de dados e restrições.
* Salve a tabela para concluir sua criação.

**Validação:**

Para validar a conclusão do desafio, você deve:

1. Acessar o console do Amazon RDS e verificar se a instância do banco de dados está em execução.
2. Conectar-se ao banco de dados usando o DBeaver e visualizar a tabela que você criou.
