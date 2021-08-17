<p align="center">
  <img src="https://github.com/spacemarcio/education-lake/blob/c979bf34edaf4777525937e9d51687f59be01777/readme-images/educalake-logo.png"/>
</p>

## EducaLake, o que é? Onde vive? O que come? Hoje mesmo, nesse repositório aqui!

EducaLake é um projeto desenvolvido como parte das atividades do Bootcamp Engenheiro de Dados Cloud, pelo IGTI. Trata-se de um plataforma que busca democratizar o acesso a dados púbicos sobre educação para gestores e especialistas. A plataforma busca eliminar a necessidade de uso de linguagem de programação para investigar e gerar insights a partir dos dados provendo uma interface low-code. Além disso, oferece uma abstração para acessar dados brutos, que em geral exigem conhecimento técnico e poder compucional para gerenciar os arquivos.

Nesse repositório, documento o MVP do projeto.

## Tá, mas como funciona?

A cadeia de processos executada na EducaLake pode ser observada abaixo:

<p align="center">
  <img src="https://github.com/spacemarcio/education-lake/blob/31e8e4166f78d68cd65b25eece23e19aa1f7b0f2/readme-images/data-workflow.png"/>
</p>

1) Primeiro os dados 'crus' são baixados diretamente do respositório do INEP e armazenados no S3 por meio de uma Lambda Function.

2) Depois os dados no S3 passam por Glue Job que trata de inferir o tipo de cada variável e pois salvar os dados no formato Parquet, particionados para otimizar a consulta aos dados.

3) Por fim os dados são disponibilizados para consulta via Metabase, que oferece uma ferramenta de consultas 'low-code' aos dados, integrado ao AWS Athena. 

A arquitetura é provisionada na AWS. Todos os recursos e workflows são criados de forma automatizada por meio de Terraform e Github Actions.

## E roda?

<p align="center">
  <img src="https://www.imagensanimadas.com/data/media/695/em-construcao-imagem-animada-0038.gif"/>
</p>

# Por hoje é isso, mas depois tem mais!