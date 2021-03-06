# Projeto da disciplina Gr�ficos Cient�ficos no R
# Autora: Jeanne Raquel de Andrade Franco
# Data: 2019-10-30
# Professor: Gustavo Paterno 

# Script para executar as an�lises de dados do projeto

# Pacotes -----------------------------------------------------------------

library(tidyverse)
library(sjPlot)
library(ggplot2)

# Carregar e visualizar dados ----------------------------------------------------------

# data/processed: Set As Working Directory
dat <- read.csv(file = "processed_data.csv")
dat
view(dat)

# Ajustes dos modelos de regress�o linear ---------------------------------

# Disparidade de renda
fit  <- lm(homi ~ disr, dat)
fit
summary(fit) 
tab_model(fit) # Tabela

# Valores preditos e intervalo de confian�a
pred <- predict(fit, interval = "confidence")
pred

# Educa��o
fit  <- lm(homi ~ educ, dat)
fit
summary(fit) 
tab_model(fit) # Tabela

# Valores preditos e intervalo de confian�a
pred <- predict(fit, interval = "confidence")
pred

# Fome
fit  <- lm(homi ~ fom, dat)
fit
summary(fit) 
tab_model(fit) # Tabela

# Valores preditos e intervalo de confian�a
pred <- predict(fit, interval = "confidence")
pred

# Uso de drogas
fit  <- lm(homi ~ drogas, dat)
fit
summary(fit) 
tab_model(fit) # Tabela

# Valores preditos e intervalo de confian�a
pred <- predict(fit, interval = "confidence")
pred


# Visualizar gr�ficos de regress�o ----------------------------------------

# Disparidade de renda
ggplot(dat, aes(y = homi_log, x = disr_log)) +
  geom_point() +
  geom_smooth(method = lm, color = "red", fill = "gray", alpha = .5) +
  labs(x = "Disparidade de renda",
       y = "Taxa de homic�dios") +
  theme_classic(base_size = 15)

# Educa��o
ggplot(dat, aes(y = homi_log, x = educ_log)) +
  geom_point() +
  geom_smooth(method = lm, color = "red", fill = "gray", alpha = .5) +
  labs(x = "Qualidade de educa��o",
       y = "Taxa de homic�dios") +
  theme_classic(base_size = 15)

# Fome
ggplot(dat, aes(y = homi_log, x = fom_log)) +
  geom_point() +
  geom_smooth(method = lm, color = "red", fill = "gray", alpha = .5) +
  labs(x = "Fome e subnutri��o",
       y = "Taxa de homic�dios") +
  theme_classic(base_size = 15)

# Drogas
ggplot(dat, aes(y = homi_log, x = drogas_log)) +
  geom_point() +
  geom_smooth(method = lm, color = "red", fill = "gray", alpha = .5) +
  labs(x = "Uso de drogas",
       y = "Taxa de homic�dios") +
  theme_classic(base_size = 15)

# Testes de correla��o -----------------------------------------------------

# Disparidade de renda e homic�dios
cor(dat$disr, dat$homi)

# Educa��o e homic�dios
cor(dat$educ, dat$homi)

# Fome e homic�dios
cor(dat$fom, dat$homi)

# Drogas e homic�dios
cor(dat$drogas, dat$homi)

