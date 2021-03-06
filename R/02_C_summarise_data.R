# Projeto da disciplina Gr�ficos Cient�ficos no R
# Autora: Jeanne Raquel de Andrade Franco
# Data: 2019-10-30
# Professor: Gustavo Paterno 

# Script para an�lise explorat�ria de dados 

# Pacotes -----------------------------------------------------------------

library(dplyr)

# Summarise dos grupos de dados -------------------------------------------

# M�dia, desvio e mediana da disparidade de renda por pa�s
table(select(drdat, Entity)) # Quantidade de amostras por pa�s

drdat %>%
  group_by(Entity) %>%
  summarise(avg = mean(disr),
            sd = sd(disr),
            median = median(disr)) %>%
  arrange(desc(avg)) # Renda do menor para maior

# Gr�fico de colunas: renda por pa�s
ggplot(drdat, aes(x = Code, y = disr))+
  geom_col()+
  theme_classic(base_size = 16)


# M�dia, desvio e mediana da taxa de homic�dios por pa�s
table(select(hodat, Entity)) # Quantidade de amostras por pa�s

hodat %>%
  group_by(Entity) %>%
  summarise(avg = mean(homi),
            sd = sd(homi),
            median = median(homi)) %>%
  arrange(desc(avg)) # Renda do menor para maior

# Gr�fico de colunas: homic�dios por ano
ggplot(hodat, aes(x = Year, y = homi))+
  geom_col()+
  theme_classic(base_size = 16)

# M�dia, desvio e mediana de educa��o por pa�s
table(select(eddat, Entity)) # Quantidade de amostras por pa�s

eddat %>%
  group_by(Entity) %>%
  summarise(avg = mean(educ),
            sd = sd(educ),
            median = median(educ)) %>%
  arrange(desc(avg)) # Renda do menor para maior

# Gr�fico de colunas: educa��o por ano
ggplot(eddat, aes(x = Year, y = educ))+
  geom_col()+
  theme_classic(base_size = 16)

# M�dia, desvio e mediana da fome por pa�s
table(select(fodat, Entity)) # Quantidade de amostras por pa�s

fodat %>%
  group_by(Entity) %>%
  summarise(avg = mean(fom),
            sd = sd(fom),
            median = median(fom)) %>%
  arrange(desc(avg)) # Renda do menor para maior

# Gr�fico de colunas: fome por ano
ggplot(fodat, aes(x = Year, y = fom))+
  geom_col()+
  theme_classic(base_size = 16)

# M�dia, desvio e mediana da taxa de uso de drogas por pa�s
table(select(uddat, Entity)) # Quantidade de amostras por pa�s

uddat %>%
  group_by(Entity) %>%
  summarise(avg = mean(drogas),
            sd = sd(drogas),
            median = median(drogas)) %>%
  arrange(desc(avg)) # Renda do menor para maior

# Gr�fico de colunas: uso de drogas por pa�s
ggplot(uddat, aes(x = Code, y = drogas))+
  geom_col()+
  theme_classic(base_size = 16)

# Fim ---------------------------------------------------------------------


