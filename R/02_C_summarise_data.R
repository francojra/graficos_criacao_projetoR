# Projeto da disciplina Gráficos Científicos no R
# Autora: Jeanne Raquel de Andrade Franco
# Data: 2019-10-30
# Professor: Gustavo Paterno 

# Script para análise exploratória de dados 

# Pacotes -----------------------------------------------------------------

library(dplyr)

# Summarise dos grupos de dados -------------------------------------------

# Média, desvio e mediana da disparidade de renda por país
table(select(drdat, Entity)) # Quantidade de amostras por país

drdat %>%
  group_by(Entity) %>%
  summarise(avg = mean(disr),
            sd = sd(disr),
            median = median(disr)) %>%
  arrange(desc(avg)) # Renda do menor para maior

# Gráfico de colunas: renda por país
ggplot(drdat, aes(x = Code, y = disr))+
  geom_col()+
  theme_classic(base_size = 16)


# Média, desvio e mediana da taxa de homicídios por país
table(select(hodat, Entity)) # Quantidade de amostras por país

hodat %>%
  group_by(Entity) %>%
  summarise(avg = mean(homi),
            sd = sd(homi),
            median = median(homi)) %>%
  arrange(desc(avg)) # Renda do menor para maior

# Gráfico de colunas: homicídios por ano
ggplot(hodat, aes(x = Year, y = homi))+
  geom_col()+
  theme_classic(base_size = 16)

# Média, desvio e mediana de educação por país
table(select(eddat, Entity)) # Quantidade de amostras por país

eddat %>%
  group_by(Entity) %>%
  summarise(avg = mean(educ),
            sd = sd(educ),
            median = median(educ)) %>%
  arrange(desc(avg)) # Renda do menor para maior

# Gráfico de colunas: educação por ano
ggplot(eddat, aes(x = Year, y = educ))+
  geom_col()+
  theme_classic(base_size = 16)

# Média, desvio e mediana da fome por país
table(select(fodat, Entity)) # Quantidade de amostras por país

fodat %>%
  group_by(Entity) %>%
  summarise(avg = mean(fom),
            sd = sd(fom),
            median = median(fom)) %>%
  arrange(desc(avg)) # Renda do menor para maior

# Gráfico de colunas: fome por ano
ggplot(fodat, aes(x = Year, y = fom))+
  geom_col()+
  theme_classic(base_size = 16)

# Média, desvio e mediana da taxa de uso de drogas por país
table(select(uddat, Entity)) # Quantidade de amostras por país

uddat %>%
  group_by(Entity) %>%
  summarise(avg = mean(drogas),
            sd = sd(drogas),
            median = median(drogas)) %>%
  arrange(desc(avg)) # Renda do menor para maior

# Gráfico de colunas: uso de drogas por país
ggplot(uddat, aes(x = Code, y = drogas))+
  geom_col()+
  theme_classic(base_size = 16)

# Fim ---------------------------------------------------------------------


