# Repositório Github: graficos_criacao_projetoR

Os arquivos apresentados nesse repositório pertencem à disciplina de Tópicos Especiais em Ecologia II, ministrada pelos professores Gustavo Paterno e Carlos Fonseca no curso de pós graduação em Ecologia da UFRN.

Data: "14/01/2020"

## **Título do projeto**

Relação entre fatores socioeconômicos e taxa de homicídios

## **Autora**

Jeanne Raquel de Andrade Franco (Franco, J. R. A.);

## **Filiação**

Universidade Federal do Rio Grande do Norte,
Departamento de Ecologia,
Laboratório de Ecologia da Restauração,
Campus Lagoa Nova, Natal, RN. CEP: 59072970

## **Breve descrição do projeto**

O projeto foi realizado para prática de produção de gráficos (pacote ggplot) e estruturação de projetos utilizando o software R. Para isso, foi utilizado um banco de dados do [Our World in data](https://ourworldindata.org/) onde foram baixados os arquivos em csv. Os dados de homicídios e dos fatores socieconômicos foram pesquisados através da aba "Research by topic" do site mencionado. 

 ### _Pergunta_

Quais os principais fatores que podem contribuir para o aumento da taxa de homicídios no mundo?

 ### _Hipótese_
 
Maior disparidade de renda e menor qualidade da educação são fatores que mais contribuem para o aumento da taxa de homicídios.

## **Notas e explicações**

### _Variáveis explicativas (X)_

1. Disparidade de renda (numérica)
2. Educação (numérica)
3. Fome e subnutrição (numérica)
4. Uso de drogas (numérica)

### _Variáveis respostas (Y)_

1. Taxa de homicídios (numérica)

### _Descrição das variáveis - Unidades_

1. Taxa de homicídios: número de homicídios a cada 100.000 pessoas.
2. Disparidade de renda: índice de Gini variando em porcentagem de 0 a 100.
3. Educação: PISA (Programme International Student Assessment) test score.
4. Fome: porcentagem; indicador de fome (FAO Food and Agriculture Organization).
5. Uso de drogas: porcentagem; parte da população com uso desordenado de álcool e outras drogas.

## **Pacote utilizado**

library("rmarkdown")

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.
