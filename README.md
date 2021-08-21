<p align="center">
  <img src="https://github.com/spacemarcio/education-lake/blob/c979bf34edaf4777525937e9d51687f59be01777/readme-images/educalake-logo.png"/>
</p>

## EducaLake, o que é? Onde vive? O que come? Hoje mesmo, nesse repositório aqui!

EducaLake é um projeto desenvolvido como parte das atividades do Bootcamp Engenheiro de Dados Cloud, pelo IGTI. Trata-se de uma plataforma que busca democratizar o acesso a dados púbicos sobre educação para gestores, especialistas e profissionais da educação. Para isso, a plataforma oferece um canal de consultas e criação de dashboards no modelo SaaS, eliminando a necessidade de fazer download de arquivos, organizar documentação ou qualquer trabalheira nada divertida.

Além disso, Educalake possui integração com Metabase, que possui uma interface low-code que permite a investigação dos dados e geração de insights sem necessidade de linguagem de programação. Com uma curva de aprendizagem mais baixa e sem necessidade de preocupação com poder computacional, tenho como objetivo aproximar a comunidade interessada em educação de Ciência de Dados, buscando favorecer um cenário de decisão data-driven.

Nesse repositório, documento o MVP do projeto.

## Tá, mas como funciona?

Por debaixo dos panos, o Educalake possui uma cadeira de ingestão, processamento e disponibilização dos dados. Abaixo é possível visualizar o dataflow dentro da plataforma. 

<p align="center">
  <img src="https://github.com/spacemarcio/education-lake/blob/31e8e4166f78d68cd65b25eece23e19aa1f7b0f2/readme-images/data-workflow.png"/>
</p>

Com relação aos aspectos mais técnicos do sistema, toda a infraestrura core da plataforma é desenvolvida a partir de IaC, por meio do Terraform, com deploy ocorre por meio de Github Actions na AWS. O scraping dos dados do site do INEP é realizado por meio de Lambda Functions. As transformações para otimização das consultas são feitas no Glue e a criação e alimentação do banco de dados é executada a partir de um Glue Crawler. Os dados ficam disponibilizados para consulta via Athena, que possui integração com o Metabase.

<p align="center">
  <img src="https://github.com/spacemarcio/education-lake/blob/81ce64339e9f955860d59713ec174d6968131283/readme-images/architeture.png"/>
</p>


## E roda?

Em bom Recifês eu te respondo, opraí: 

<p align="center">
  <img src="https://github.com/spacemarcio/education-lake/blob/db6064f1370fd09400aa052378847be06d4383a6/readme-images/demo.gif"/>
</p>

# Por hoje é isso, mas depois tem mais!