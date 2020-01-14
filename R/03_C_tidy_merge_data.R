# Projeto da disciplina Gráficos Científicos no R
# Autora: Jeanne Raquel de Andrade Franco
# Data: 2019-10-30
# Professor: Gustavo Paterno 

# Script para juntar tabelas e limpar dados

# Pacotes -----------------------------------------------------------------

library(tidyverse)
library(inspectdf)

# Juntar tabelas para análises de dados -----------------------------------

# Construção de tabelas
tabA <- data.frame(drdat)
tabA
tabB <- data.frame(hodat)
tabB
tabC <- data.frame(eddat)
tabC
tabD <- data.frame(fodat)
tabD
tabE <- data.frame(uddat)
tabE

dat_cl <- left_join(tabA, tabB)
dat_cle <- left_join(dat_cl, tabC)
dat_clea <- left_join(dat_cle, tabD)
dat_clean <- left_join(dat_clea, tabE)

# Verificar dados ---------------------------------------------------------

any(duplicated(dat_clean))  # Registro de linhas duplicadas
any(is.na(dat_clean))       # Registros de NAs 

# Remove NAs --------------------------------------------------------------

na_check <- inspectdf::inspect_na(dat_clean) # Porcentagem de NAs em cada coluna
na_check

# Quais linhas apresentam NAs
dat_clean[is.na(dat_clean$disr) | is.na(dat_clean$homi) 
          | is.na(dat_clean$educ)
          | is.na(dat_clean$fom)
          | is.na(dat_clean$drogas),]

# Remover NAs
dat_clean <- na.omit(dat_clean)
dat_clean

# Verificar NAs (Deve haver apenas zeros!)
inspectdf::inspect_na(dat_clean) # Porcentagem de NAs em cada coluna

# Visualização da tabela final
view(dat_clean)
nrow(ho)             
str(ho)  
head(dat_clean)

# Fim ---------------------------------------------------------------------


