# Projeto da disciplina Gráficos Científicos no R
# Autora: Jeanne Raquel de Andrade Franco
# Data: 2019-10-30
# Professor: Gustavo Paterno 

# Script para geração de gráficos ggplot

# Pacotes -----------------------------------------------------------------

library(ggplot2)
library(cowplot)

# Carregar dados ----------------------------------------------------------

# data/processed: Set As Working Directory
dat <- read.csv(file = "processed_data.csv")
dat

# Gráficos ----------------------------------------------------------------

# Disparidade de renda
g1 <- ggplot(dat, aes(y = homi_log, x = disr_log)) +
  geom_point(alpha = 0.85, size = 2.5, color = "darkblue", shape = 16) +
  geom_smooth(method = lm, color = "black", fill = "lightsteelblue3", alpha = .5) +
  labs(x = "Disparidade de renda - Gini [log]",
       y = "Taxa de homicídios (%) [log]",
       title = "Relação entre homicídios e disparidade de renda",
       subtitle = "Disparidade de renda aumenta taxa de homicídios") +
  theme_light(base_size = 15) +
  #theme(axis.ticks = element_line(color = "black", size = 3))+
  theme(aspect.ratio = 0.85)
g1

# Educação
g2 <- ggplot(dat, aes(y = homi_log, x = educ_log)) +
  geom_point(alpha = 0.85, size = 2.5, color = "darkblue", shape = 16) +
  geom_smooth(method = lm, color = "black", fill = "lightsteelblue3", alpha = .5) +
  labs(x = "Qualidade de educação - PISA test [log]",
       y = "Taxa de homicídios (%) [log]",
       title = "Relação entre homicídios e educação",
       subtitle = "Qualidade de educação reduz taxa de homicídios") +
  theme_light(base_size = 15) +
  theme(aspect.ratio = 0.85)
g2

# Fome
g3 <- ggplot(dat, aes(y = homi_log, x = fom_log)) +
  geom_point(alpha = 0.85, size = 2.5, color = "darkblue", shape = 16) +
  geom_smooth(method = lm, color = "black", fill = "lightsteelblue3", alpha = .5) +
  labs(x = "Fome (%) - Indicador FAO [log]",
       y = "Taxa de homicídios (%) [log]",
       title = "Relação entre homicídios e fome",
       subtitle = "") +
  theme_light(base_size = 15) +
theme(aspect.ratio = 0.85)
g3

# Drogas
g4 <- ggplot(dat, aes(y = homi_log, x = drogas_log)) +
  geom_point(alpha = 0.85, size = 2.5, color = "darkblue", shape = 16) +
  geom_smooth(method = lm, color = "black", fill = "lightsteelblue3", alpha = .5) +
  labs(x = "Uso de drogas (%) [log]",
       y = "Taxa de homicídios (%) [log]",
       title = "Relação entre homicídios e disparidade de renda",
       subtitle = "Uso de drogas aumenta taxa de homicídios") +
  theme_light(base_size = 15) +
  theme(aspect.ratio = 0.85)
g4

# Salvar figuras ----------------------------------------------------------

ggsave(plot = g1, filename = "plot_homicides_dr_regression.png",
       height = 8,
       width = 12,
       units = "cm")

ggsave(plot = g2, filename = "plot_homicides_ed_regression.png",
       height = 8,
       width = 12,
       units = "cm")

ggsave(plot = g3, filename = "plot_homicides_fom_regression.png",
       height = 8,
       width = 12,
       units = "cm")

ggsave(plot = g4, filename = "plot_homicides_ud_regression.png",
       height = 8,
       width = 12,
       units = "cm")
