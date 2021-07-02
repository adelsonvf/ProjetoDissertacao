rm(list=ls())#limpar memoria
cat("\014")#limpar console
library(data.table)
library(tidyverse)
df <- fread("DadosBrutos/202101_Transferencias.csv", dec=",",encoding ="Latin-1" )
df <- df %>% select(c(1,3,4,6,8,16,27,35,36))
names(df) <- c("AnoMes","TIPO","Uf","Municipio","Orgao","Programa","PlanoOrcamentario","Favorecido","ValorTransferido")
dfPM <- df %>% filter(Municipio %in% c("PARA DE MINAS", "FLORESTAL", "CONCEICAO DO PARA", "ITAUNA"))
table(dfPM$Municipio, dfPM$ValorTransferido)
tot <- sum(dfPM$`VALOR TRANSFERIDO`)

Tot <- dfPM %>% group_by(Municipio) %>% summarise(Total=sum(ValorTransferido), .groups = 'drop')
#criar gráficos comparando os valores recebidos no mês de janeiro de 5 cidades da região
#usar gráficos do ggplot2
#options(scipen = 999)
Tot %>% ggplot(aes(Municipio,
                   Total,
                   fill = Municipio,
                   label = Total)) +
  geom_col(position = "dodge", show.legend = FALSE) +
  geom_text(position = position_dodge(width = 0.9), vjust = -0.5)+
  theme_minimal()



ggplot(data=Tot, aes(x=Municipio, y=Total)) +
  geom_bar(stat="identity")
