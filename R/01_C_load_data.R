# Projeto da disciplina Gráficos Científicos no R
# Autora: Jeanne Raquel de Andrade Franco
# Data: 2019-10-30
# Professor: Gustavo Paterno 

# Script para carregar e limpar de dados brutos

# Pacotes  ----------------------------------------------------------------

library(tidyverse)
library(forcats)

# Carregar dados ----------------------------------------------------------

# data/raw: Set As Working Directory
dr <- read.csv(file = "inequality-of-incomes-chartbook.csv") # Disparidade de renda
ho <- read.csv(file = "intentional-homicides-per-100000-people.csv") # Homicídios
ed <- read.csv(file = "pisa-test-score-mean-performance-on-the-science-scale.csv") # Educação
fo <- read.csv(file = "prevalence-of-undernourishment.csv") # Fome 
ud <- read.csv(file = "share-with-alcohol-or-drug-use-disorders.csv") # Uso de drogas

# Verificar dados ------------------------------------------

# Disparidade de renda
nrow(dr)             # Número de linhas
str(dr)              # Classes de variáveis
attributes(dr)       # Atributos
head(dr)             # Leitura das primeiras linhas
any(duplicated(dr))  # Registro de linhas duplicadas
any(is.na(dr))       # Registros de NAs 
view(dr)             # Visualizar tabela
names(dr)            # Visualizar nomes das variáveis categóricas

# Homicídios
nrow(ho)             
str(ho)              
attributes(ho)       
head(ho)             
any(duplicated(ho))  
any(is.na(ho))        
view(ho)             
names(ho)

# Educação
nrow(ed)             
str(ed)              
attributes(ed)       
head(ed)             
any(duplicated(ed))  
any(is.na(ed)) 
view(ed) 
names(ed)

# Fome
nrow(fo)             
str(fo)              
attributes(fo)       
head(fo)             
any(duplicated(fo))  
any(is.na(fo))
view(fo) 
names(fo)

# Uso de drogas
nrow(ud)             
str(ud)              
attributes(ud)       
head(ud)             
any(duplicated(ud))  
any(is.na(ud)) 
view(ud)
names(ud)

# Renomear nomes de colunas -----------------------------------------------

# Disparidade de renda
drdat <- dplyr::rename(dr,
disr = Chartbook.of.Economic.Inequality..2016..â...Gini)
drdat                     
view(drdat)

# Homicídios
hodat <- dplyr::rename(ho,
homi = Intentional.homicides..per.100.000.people...per.100.000.people.)
hodat                     
view(hodat)

# Educação
eddat <- dplyr::rename(ed,
educ = PISA..Mean.performance.on.the.science.scale)
eddat                     
view(eddat)

# Fome
fodat <- dplyr::rename(fo,
fom = Prevalence.of.undernourishment....of.population.....of.population.)
hodat                     
view(fodat)

# Uso de drogas
uddat <- dplyr::rename(ud,
drogas = Prevalence...Alcohol.and.substance.use.disorders..Both..age.standardized.percent.....)
uddat                     
view(uddat)

# Verificar organização de todas as tabelas -------------------------------

# Disparidade de renda
view(drdat)
nrow(drdat)
ncol(drdat)

# Homicídios
view(hodat)
nrow(hodat)
ncol(hodat)

# Educação
view(eddat)
nrow(eddat)
ncol(eddat)

# Fome
view(fodat)
nrow(fodat)
ncol(fodat)

#Uso de drogas
view(uddat)
nrow(uddat)
ncol(uddat)

# Salvar objetos ----------------------------------------------------------

saveRDS(drdat, file = "my_data.rds")
readRDS(file = "my_data.rds")

saveRDS(hodat, file = "my_data.rds")
readRDS(file = "my_data.rds")

saveRDS(eddat, file = "my_data.rds")
readRDS(file = "my_data.rds")

saveRDS(fodat, file = "my_data.rds")
readRDS(file = "my_data.rds")

saveRDS(uddat, file = "my_data.rds")
readRDS(file = "my_data.rds")

# Fim ---------------------------------------------------------------------
