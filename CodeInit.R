rm(list=ls())#limpar memoria
cat("\014")#limpar console
library(data.table)
library(tidyverse)
library(plotly)
df <- fread("DadosBrutos/202101_Transferencias.csv", dec=",",encoding ="Latin-1" )
df <- df %>% select(c(1,3,4,6,8,16,27,35,36))
<<<<<<< HEAD
names(df) <- c("AnoMes","Tipo","Uf","Municipio","Orgao","Programa","PlanoOrcamentario","Favorecido","ValorTransferido")
dfPM <- df %>% filter(Municipio %in% c("PARA DE MINAS", "FLORESTAL", "ITAUNA", "CONCEICAO DO PARA"))
=======
names(df) <- c("AnoMes","TIPO","Uf","Municipio","Orgao","Programa","PlanoOrcamentario","Favorecido","ValorTransferido")
dfPM <- df %>% filter(Municipio %in% c("PARA DE MINAS", "FLORESTAL", "CONCEICAO DO PARA", "ITAUNA"))
table(dfPM$Municipio, dfPM$ValorTransferido)
>>>>>>> 14f71d5df046f8a86a12c287dc3cd5f170193631
tot <- sum(dfPM$`VALOR TRANSFERIDO`)

Tot <- dfPM %>% group_by(Municipio) %>% summarise(Total=sum(ValorTransferido), .groups = 'drop')
#criar gráficos comparando os valores recebidos no mês de janeiro de 5 cidades da região
#usar gráficos do ggplot2
<<<<<<< HEAD
options(scipen = 999)
Tot <- dfPM %>% group_by(Municipio) %>% summarise(Total=sum(ValorTransferido))
  plot1 <- ggplot(data = Tot, aes(x = Municipio,
                         y = Total,
                         fill = Municipio,
                         label = Total)) +
    geom_col(show.legend = FALSE, position = "dodge") +
    geom_text(position = position_dodge(width = 0.9), vjust = -0.5) +
    theme_classic()
  ggplotly(plot1)
 ################################################################################
   plot2 <- ggplot(data = Tot, aes(x = Municipio,
                         y = Total,
                         fill = Municipio,
                         label = Total,
                         text = paste("Municipio:", Municipio, "<br>",
                                      "Total:", Total))) +
    geom_bar(stat = "identity", show.legend = FALSE, position = "dodge") +
    geom_text(position = position_dodge(width = 0.9), vjust = -0.5) +
    theme_classic()+
    coord_flip()
  ggplotly(plot2, tooltip = "text") %>% layout (showlegend = FALSE)
################################################################################
  plot3 <- ggplot(data = Tot, aes(x = Municipio,
                                  y = Total,
                                  fill = Municipio,
                                  label = Total,
                                  text = paste("Municipio:", Municipio, "<br>",
                                               "Total:", Total))) +
    geom_point(stat = "identity", show.legend = FALSE, position = "dodge") +
    geom_text(position = position_dodge(width = 0.9), vjust = -0.5) +
    theme_classic()+
    coord_flip()
  ggplotly(plot3, tooltip = "text") %>% layout (showlegend = FALSE)

################################################################################
=======
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
>>>>>>> 14f71d5df046f8a86a12c287dc3cd5f170193631
