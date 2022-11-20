### Desafio DIO UNIMED-BH - AWS Athena

Replicação do projeto elaborado por Cassiano Peres para o desafio sobre a utilização do serviço Athena, da AWS.

Link do repositório: https://github.com/cassianobrexbit/dio-live-athena.git



##### Serviços utilizados

- Amazon S3
- Amazon Glue
- Amazon Athena
- Amazon QuickSight



#### Etapas desenvolvidas no projeto:

##### Criando bucket no Amazon S3

- Amazon S3 Console &rarr; Buckets &rarr;  Create bucket &rarr; [Bucket name] &rarr; Create bucket
- Create folder (Criar uma pasta chamada /output e outra com o nome do base de dados. Este nome irá definir o nome da tabela criada no Glue)
- Upload dos arquivos de dados localizados na pasta /data



###### Criando Glue Crawler

- Amazon Glue Console &rarr; Crawlers &rarr; Add Crawler
- Source type [Data Stores] &rarr; Crawl all folders
- Data store [S3] &rarr; Include path [caminho do diretório]
- Create IAM Role
- Frequency [Run on demand]
- Database name [defina o nome da db]
- Group behavior [Create a single schema for each S3 path]
- Finish
- Databases &rarr; Tables &rarr; Visualizar dados das tabelas criadas



##### Criando aplicação no Amazon Athena

- Query editor &rarr; Settings &rarr; Manage settings &rarr; Query result location and encryption &rarr; Browse S3 &rarr; Selecionar o bucket criado
- Selecionar Database &rarr; Criar queries (exemplos neste repositório)
- Verificar queries não salvas no bucket criado no S3
- Salvar queries &rarr; Executar novamente &rarr; Verificar no bucket criado no S3



###### Criando nova tabela

- Generate table DDL
- Copiar a query gerada
- Select Database &rarr; Select Table &rarr; Edit on preview &rarr; Save & Visualize
- Criar visualizações selecionando colunas, criando filtros e parâmetros e selecionando Visual Types para gráficos



##### Eliminando recursos

- Excluir os elementos criados



