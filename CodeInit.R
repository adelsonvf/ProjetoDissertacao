rm(list=ls())#limpar memoria
cat("\014")#limpar console
library(data.table)
library(tidyverse)
df <- fread("DadosBrutos/202101_Transferencias.csv", dec=",",encoding ="Latin-1" )
df <- df %>% select(c(1,3,4,6,8,16,27,35,36))
names(df) <- c("AnoMes","Favorecido","Uf","Municipio","Orgao","Programa","PlanoOrcamentario","Favorecido","ValorTransferido")
dfPM <- df %>% filter(df$Municipio %in% c("PARA DE MINAS", "FLORESTAL", "CONCEICAO DO PARA"))
tot <- sum(dfPM$`VALOR TRANSFERIDO`)
#criar gráficos comparando os valores recebidos no mês de janeiro de 5 cidades da região
#usar gráficos do ggplot2
#options(scipen = 999)
library(ggplot2)
library(ggalt)
data("dfPM", package = "ggplot2")
#Gráfico Inicial
