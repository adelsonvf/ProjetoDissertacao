rm(list=ls())#limpar memoria
cat("\014")#limpar console
library(data.table)
library(tidyverse)
library(plotly)
library(esquisse)
#setwd("~/Dissertacao/ProjetoDissertacao/shiny/BancoDados")
df <- readRDS("~/Projetos/3Projetos_de_Pesquisa/2020/ProfMat/Adelson/ProjetoDissertacao/shiny/BancoDados/df.Rds")
df <- df[1:10000,]
dfCity <- df %>% group_by(UF) %>% count(MUNICIPIO)
dfCity %>% ggplot(aes(x = UF, y=count, fill = UF, label = count)) +
  geom_bar(position = 'dodge', stat='identity', show.legend = F) +
  geom_text(aes(label=count), position=position_dodge(width=0.9), vjust=-0.25) +
  theme_minimal()
