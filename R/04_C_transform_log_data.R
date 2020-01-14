# Projeto da disciplina Gráficos Científicos no R
# Autora: Jeanne Raquel de Andrade Franco
# Data: 2019-10-30
# Professor: Gustavo Paterno 

# Script para modificar escala

# Transformar variáveis para escala logarítmica ---------------------------

dat_clean$disr_log <- log(dat_clean$disr)
dat_clean$homi_log <- log(dat_clean$homi)
dat_clean$educ_log <- log(dat_clean$educ)
dat_clean$fom_log <- log(dat_clean$fom)
dat_clean$drogas_log <- log(dat_clean$drogas)

head(dat_clean)
view(dat_clean)


# Salvar dados processados ------------------------------------------------

write.csv(x = dat_clean, 
          file = "processed_data.csv", 
          row.names = FALSE)

# Test saved data
# data/processed: Set As Working Directory
dat_test <- read.csv("processed_data.csv")
str(dat_test)


# Fim ---------------------------------------------------------------------


