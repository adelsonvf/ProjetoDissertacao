# Clear plots
if(!is.null(dev.list())) dev.off()
# Clean workspace
rm(list=ls())
library("tidyverse")
library("data.table")
library("stringr")
library("lubridate")
setwd("~/GitHub/PortalTransparencia/Transferencias")
# Clear console
cat("\014")
#########################################################################################
#####################**********Leitura dos Dados*************############################
#########################################################################################
#2016
TFJan2016 <- "Ano2016/201601_Transferencias.csv"
TFFev2016 <- "Ano2016/201602_Transferencias.csv"
TFMar2016 <- "Ano2016/201603_Transferencias.csv"
TFAbr2016 <- "Ano2016/201604_Transferencias.csv"
TFMai2016 <- "Ano2016/201605_Transferencias.csv"
TFJun2016 <- "Ano2016/201606_Transferencias.csv"
TFJul2016 <- "Ano2016/201607_Transferencias.csv"
TFAgo2016 <- "Ano2016/201608_Transferencias.csv"
TFSet2016 <- "Ano2016/201609_Transferencias.csv"
TFOut2016 <- "Ano2016/201610_Transferencias.csv"
TFNov2016 <- "Ano2016/201611_Transferencias.csv"
TFDez2016 <- "Ano2016/201612_Transferencias.csv"
########Gerar Banco de dados Anual
source("Funcoes/create_tab.R")
#2016
Jan2016 <- create_tab(TFJan2016)
Fev2016 <- create_tab(TFFev2016)
Mar2016 <- create_tab(TFMar2016)
Abr2016 <- create_tab(TFAbr2016)
Mai2016 <- create_tab(TFMai2016)
Jun2016 <- create_tab(TFJun2016)
Jul2016 <- create_tab(TFJul2016)
Ago2016 <- create_tab(TFAgo2016)
Set2016 <- create_tab(TFSet2016)
Out2016 <- create_tab(TFOut2016)
Nov2016 <- create_tab(TFNov2016)
Dez2016 <- create_tab(TFDez2016)
Jan2016$Mes <- "Janeiro"
Jan2016$Ano <- "2016"
Fev2016$Mes <- "Fevereiro"
Fev2016$Ano <- "2016"
Mar2016$Mes <- "Marco"
Mar2016$Ano <- "2016"
Abr2016$Mes <- "Abril"
Abr2016$Ano <- "2016"
Mai2016$Mes <- "Maio"
Mai2016$Ano <- "2016"
Jun2016$Mes <- "Junho"
Jun2016$Ano <- "2016"
Jul2016$Mes <- "Julho"
Jul2016$Ano <- "2016"
Ago2016$Mes <- "Agosto"
Ago2016$Ano <- "2016"
Set2016$Mes <- "Setembro"
Set2016$Ano <- "2016"
Out2016$Mes <- "Outubro"
Out2016$Ano <- "2016"
Nov2016$Mes <- "Novembro"
Nov2016$Ano <- "2016"
Dez2016$Mes <- "Dezembro"
Dez2016$Ano <- "2016"
Transferencias2016 <- rbind(Jan2016, Fev2016,
                           Mar2016, Abr2016,
                           Mai2016, Jun2016,
                           Jul2016, Ago2016,
                           Set2016, Out2016,
                           Nov2016, Dez2016)
write.csv(Transferencias2016, "Ano2016/Transferencias2016.csv", row.names = FALSE)
######
# Clear plots
if(!is.null(dev.list())) dev.off()
# Clean workspace
rm(list=ls())
library("tidyverse")
library("data.table")
library("stringr")
library("lubridate")
setwd("~/GitHub/PortalTransparencia/Transferencias")
# Clear console
cat("\014")
#########################################################################################
#####################**********Leitura dos Dados*************############################
#########################################################################################
#2017
TFJan2017 <- "Ano2017/201701_Transferencias.csv"
TFFev2017 <- "Ano2017/201702_Transferencias.csv"
TFMar2017 <- "Ano2017/201703_Transferencias.csv"
TFAbr2017 <- "Ano2017/201704_Transferencias.csv"
TFMai2017 <- "Ano2017/201705_Transferencias.csv"
TFJun2017 <- "Ano2017/201706_Transferencias.csv"
TFJul2017 <- "Ano2017/201707_Transferencias.csv"
TFAgo2017 <- "Ano2017/201708_Transferencias.csv"
TFSet2017 <- "Ano2017/201709_Transferencias.csv"
TFOut2017 <- "Ano2017/201710_Transferencias.csv"
TFNov2017 <- "Ano2017/201711_Transferencias.csv"
TFDez2017 <- "Ano2017/201712_Transferencias.csv"
########Gerar Banco de dados Anual
source("Funcoes/create_tab.R")
#2017
Jan2017 <- create_tab(TFJan2017)
Fev2017 <- create_tab(TFFev2017)
Mar2017 <- create_tab(TFMar2017)
Abr2017 <- create_tab(TFAbr2017)
Mai2017 <- create_tab(TFMai2017)
Jun2017 <- create_tab(TFJun2017)
Jul2017 <- create_tab(TFJul2017)
Ago2017 <- create_tab(TFAgo2017)
Set2017 <- create_tab(TFSet2017)
Out2017 <- create_tab(TFOut2017)
Nov2017 <- create_tab(TFNov2017)
Dez2017 <- create_tab(TFDez2017)
Jan2017$Mes <- "Janeiro"
Jan2017$Ano <- "2017"
Fev2017$Mes <- "Fevereiro"
Fev2017$Ano <- "2017"
Mar2017$Mes <- "Marco"
Mar2017$Ano <- "2017"
Abr2017$Mes <- "Abril"
Abr2017$Ano <- "2017"
Mai2017$Mes <- "Maio"
Mai2017$Ano <- "2017"
Jun2017$Mes <- "Junho"
Jun2017$Ano <- "2017"
Jul2017$Mes <- "Julho"
Jul2017$Ano <- "2017"
Ago2017$Mes <- "Agosto"
Ago2017$Ano <- "2017"
Set2017$Mes <- "Setembro"
Set2017$Ano <- "2017"
Out2017$Mes <- "Outubro"
Out2017$Ano <- "2017"
Nov2017$Mes <- "Novembro"
Nov2017$Ano <- "2017"
Dez2017$Mes <- "Dezembro"
Dez2017$Ano <- "2017"
Transferencias2017 <- rbind(Jan2017, Fev2017,
                            Mar2017, Abr2017,
                            Mai2017, Jun2017,
                            Jul2017, Ago2017,
                            Set2017, Out2017,
                            Nov2017, Dez2017)
write.csv(Transferencias2017, "Ano2017/Transferencias2017.csv", row.names = FALSE)
####
# Clear plots
if(!is.null(dev.list())) dev.off()
# Clean workspace
rm(list=ls())
library("tidyverse")
library("data.table")
library("stringr")
library("lubridate")
setwd("~/GitHub/PortalTransparencia/Transferencias")
# Clear console
cat("\014")
#########################################################################################
#####################**********Leitura dos Dados*************############################
#########################################################################################
#2018
TFJan2018 <- "Ano2018/201801_Transferencias.csv"
TFFev2018 <- "Ano2018/201802_Transferencias.csv"
TFMar2018 <- "Ano2018/201803_Transferencias.csv"
TFAbr2018 <- "Ano2018/201804_Transferencias.csv"
TFMai2018 <- "Ano2018/201805_Transferencias.csv"
TFJun2018 <- "Ano2018/201806_Transferencias.csv"
TFJul2018 <- "Ano2018/201807_Transferencias.csv"
TFAgo2018 <- "Ano2018/201808_Transferencias.csv"
TFSet2018 <- "Ano2018/201809_Transferencias.csv"
TFOut2018 <- "Ano2018/201810_Transferencias.csv"
TFNov2018 <- "Ano2018/201811_Transferencias.csv"
TFDez2018 <- "Ano2018/201812_Transferencias.csv"
########Gerar Banco de dados Anual
source("Funcoes/create_tab.R")
#2018
Jan2018 <- create_tab(TFJan2018)
Fev2018 <- create_tab(TFFev2018)
Mar2018 <- create_tab(TFMar2018)
Abr2018 <- create_tab(TFAbr2018)
Mai2018 <- create_tab(TFMai2018)
Jun2018 <- create_tab(TFJun2018)
Jul2018 <- create_tab(TFJul2018)
Ago2018 <- create_tab(TFAgo2018)
Set2018 <- create_tab(TFSet2018)
Out2018 <- create_tab(TFOut2018)
Nov2018 <- create_tab(TFNov2018)
Dez2018 <- create_tab(TFDez2018)
Jan2018$Mes <- "Janeiro"
Jan2018$Ano <- "2018"
Fev2018$Mes <- "Fevereiro"
Fev2018$Ano <- "2018"
Mar2018$Mes <- "Marco"
Mar2018$Ano <- "2018"
Abr2018$Mes <- "Abril"
Abr2018$Ano <- "2018"
Mai2018$Mes <- "Maio"
Mai2018$Ano <- "2018"
Jun2018$Mes <- "Junho"
Jun2018$Ano <- "2018"
Jul2018$Mes <- "Julho"
Jul2018$Ano <- "2018"
Ago2018$Mes <- "Agosto"
Ago2018$Ano <- "2018"
Set2018$Mes <- "Setembro"
Set2018$Ano <- "2018"
Out2018$Mes <- "Outubro"
Out2018$Ano <- "2018"
Nov2018$Mes <- "Novembro"
Nov2018$Ano <- "2018"
Dez2018$Mes <- "Dezembro"
Dez2018$Ano <- "2018"
Transferencias2018 <- rbind(Jan2018, Fev2018,
                            Mar2018, Abr2018,
                            Mai2018, Jun2018,
                            Jul2018, Ago2018,
                            Set2018, Out2018,
                            Nov2018, Dez2018)
write.csv(Transferencias2018, "Ano2018/Transferencias2018.csv", row.names = FALSE)
#2019
# Clear plots
if(!is.null(dev.list())) dev.off()
# Clean workspace
rm(list=ls())
library("tidyverse")
library("data.table")
library("stringr")
library("lubridate")
setwd("~/GitHub/PortalTransparencia/Transferencias")
# Clear console
cat("\014")
#########################################################################################
#####################**********Leitura dos Dados*************############################
#########################################################################################
#2019
TFJan2019 <- "Ano2019/201901_Transferencias.csv"
TFFev2019 <- "Ano2019/201902_Transferencias.csv"
TFMar2019 <- "Ano2019/201903_Transferencias.csv"
TFAbr2019 <- "Ano2019/201904_Transferencias.csv"
TFMai2019 <- "Ano2019/201905_Transferencias.csv"
TFJun2019 <- "Ano2019/201906_Transferencias.csv"
TFJul2019 <- "Ano2019/201907_Transferencias.csv"
TFAgo2019 <- "Ano2019/201908_Transferencias.csv"
TFSet2019 <- "Ano2019/201909_Transferencias.csv"
TFOut2019 <- "Ano2019/201910_Transferencias.csv"
TFNov2019 <- "Ano2019/201911_Transferencias.csv"
TFDez2019 <- "Ano2019/201912_Transferencias.csv"
########Gerar Banco de dados Anual
source("Funcoes/create_tab.R")
Jan2019 <- create_tab(TFJan2019)
Fev2019 <- create_tab(TFFev2019)
Mar2019 <- create_tab(TFMar2019)
Abr2019 <- create_tab(TFAbr2019)
Mai2019 <- create_tab(TFMai2019)
Jun2019 <- create_tab(TFJun2019)
Jul2019 <- create_tab(TFJul2019)
Ago2019 <- create_tab(TFAgo2019)
Set2019 <- create_tab(TFSet2019)
Out2019 <- create_tab(TFOut2019)
Nov2019 <- create_tab(TFNov2019)
Dez2019 <- create_tab(TFDez2019)
Jan2019$Mes <- "Janeiro"
Jan2019$Ano <- "2019"
Fev2019$Mes <- "Fevereiro"
Fev2019$Ano <- "2019"
Mar2019$Mes <- "Marco"
Mar2019$Ano <- "2019"
Abr2019$Mes <- "Abril"
Abr2019$Ano <- "2019"
Mai2019$Mes <- "Maio"
Mai2019$Ano <- "2019"
Jun2019$Mes <- "Junho"
Jun2019$Ano <- "2019"
Jul2019$Mes <- "Julho"
Jul2019$Ano <- "2019"
Ago2019$Mes <- "Agosto"
Ago2019$Ano <- "2019"
Set2019$Mes <- "Setembro"
Set2019$Ano <- "2019"
Out2019$Mes <- "Outubro"
Out2019$Ano <- "2019"
Nov2019$Mes <- "Novembro"
Nov2019$Ano <- "2019"
Dez2019$Mes <- "Dezembro"
Dez2019$Ano <- "2019"
Transferencias2019 <- rbind(Jan2019, Fev2019,
                            Mar2019, Abr2019,
                            Mai2019, Jun2019,
                            Jul2019, Ago2019,
                            Set2019, Out2019,
                            Nov2019, Dez2019)
write.csv(Transferencias2019, "Ano2019/Transferencias2019.csv", row.names = FALSE)
#2020
# Clear plots
if(!is.null(dev.list())) dev.off()
# Clean workspace
rm(list=ls())
library("tidyverse")
library("data.table")
library("stringr")
library("lubridate")
setwd("~/GitHub/PortalTransparencia/Transferencias")
# Clear console
cat("\014")
#########################################################################################
#####################**********Leitura dos Dados*************############################
#########################################################################################
#2020
TFJan2020 <- "Ano2020/202001_Transferencias.csv"
TFFev2020 <- "Ano2020/202002_Transferencias.csv"
TFMar2020 <- "Ano2020/202003_Transferencias.csv"
TFAbr2020 <- "Ano2020/202004_Transferencias.csv"
TFMai2020 <- "Ano2020/202005_Transferencias.csv"
TFJun2020 <- "Ano2020/202006_Transferencias.csv"
TFJul2020 <- "Ano2020/202007_Transferencias.csv"
TFAgo2020 <- "Ano2020/202008_Transferencias.csv"
TFSet2020 <- "Ano2020/202009_Transferencias.csv"
TFOut2020 <- "Ano2020/202010_Transferencias.csv"
TFNov2020 <- "Ano2020/202011_Transferencias.csv"
TFDez2020 <- "Ano2020/202012_Transferencias.csv"
########Gerar Banco de dados Anual
source("Funcoes/create_tab.R")
Jan2020 <- create_tab(TFJan2020)
Fev2020 <- create_tab(TFFev2020)
Mar2020 <- create_tab(TFMar2020)
Abr2020 <- create_tab(TFAbr2020)
Mai2020 <- create_tab(TFMai2020)
Jun2020 <- create_tab(TFJun2020)
Jul2020 <- create_tab(TFJul2020)
Ago2020 <- create_tab(TFAgo2020)
Set2020 <- create_tab(TFSet2020)
Out2020 <- create_tab(TFOut2020)
Nov2020 <- create_tab(TFNov2020)
Dez2020 <- create_tab(TFDez2020)
Jan2020$Mes <- "Janeiro"
Jan2020$Ano <- "2020"
Fev2020$Mes <- "Fevereiro"
Fev2020$Ano <- "2020"
Mar2020$Mes <- "Marco"
Mar2020$Ano <- "2020"
Abr2020$Mes <- "Abril"
Abr2020$Ano <- "2020"
Mai2020$Mes <- "Maio"
Mai2020$Ano <- "2020"
Jun2020$Mes <- "Junho"
Jun2020$Ano <- "2020"
Jul2020$Mes <- "Julho"
Jul2020$Ano <- "2020"
Ago2020$Mes <- "Agosto"
Ago2020$Ano <- "2020"
Set2020$Mes <- "Setembro"
Set2020$Ano <- "2020"
Out2020$Mes <- "Outubro"
Out2020$Ano <- "2020"
Nov2020$Mes <- "Novembro"
Nov2020$Ano <- "2020"
Dez2020$Mes <- "Dezembro"
Dez2020$Ano <- "2020"
Transferencias2020 <- rbind(Jan2020, Fev2020,
                            Mar2020, Abr2020,
                            Mai2020, Jun2020,
                            Jul2020, Ago2020,
                            Set2020, Out2020,
                            Nov2020, Dez2020)
write.csv(Transferencias2020, "Ano2020/Transferencias2020.csv", row.names = FALSE)
#2021
# Clear plots
if(!is.null(dev.list())) dev.off()
# Clean workspace
rm(list=ls())
library("tidyverse")
library("data.table")
library("stringr")
library("lubridate")
setwd("~/GitHub/PortalTransparencia/Transferencias")
# Clear console
cat("\014")
#########################################################################################
#####################**********Leitura dos Dados*************############################
#########################################################################################
#2021
TFJan2021 <- "Ano2021/202101_Transferencias.csv"
TFFev2021 <- "Ano2021/202102_Transferencias.csv"
TFMar2021 <- "Ano2021/202103_Transferencias.csv"
TFAbr2021 <- "Ano2021/202104_Transferencias.csv"
TFMai2021 <- "Ano2021/202105_Transferencias.csv"
TFJun2021 <- "Ano2021/202106_Transferencias.csv"
TFJul2021 <- "Ano2021/202107_Transferencias.csv"
TFAgo2021 <- "Ano2021/202108_Transferencias.csv"
TFSet2021 <- "Ano2021/202109_Transferencias.csv"
TFOut2021 <- "Ano2021/202110_Transferencias.csv"
TFNov2021 <- "Ano2021/202111_Transferencias.csv"
TFDez2021 <- "Ano2021/202112_Transferencias.csv"
########Gerar Banco de dados Anual
source("Funcoes/create_tab.R")
Jan2021 <- create_tab(TFJan2021)
Fev2021 <- create_tab(TFFev2021)
Mar2021 <- create_tab(TFMar2021)
Abr2021 <- create_tab(TFAbr2021)
Mai2021 <- create_tab(TFMai2021)
Jun2021 <- create_tab(TFJun2021)
Jul2021 <- create_tab(TFJul2021)
Ago2021 <- create_tab(TFAgo2021)
Set2021 <- create_tab(TFSet2021)
Out2021 <- create_tab(TFOut2021)
Nov2021 <- create_tab(TFNov2021)
Dez2021 <- create_tab(TFDez2021)
Jan2021$Mes <- "Janeiro"
Jan2021$Ano <- "2021"
Fev2021$Mes <- "Fevereiro"
Fev2021$Ano <- "2021"
Mar2021$Mes <- "Marco"
Mar2021$Ano <- "2021"
Abr2021$Mes <- "Abril"
Abr2021$Ano <- "2021"
Mai2021$Mes <- "Maio"
Mai2021$Ano <- "2021"
Jun2021$Mes <- "Junho"
Jun2021$Ano <- "2021"
Jul2021$Mes <- "Julho"
Jul2021$Ano <- "2021"
Ago2021$Mes <- "Agosto"
Ago2021$Ano <- "2021"
Set2021$Mes <- "Setembro"
Set2021$Ano <- "2021"
Out2021$Mes <- "Outubro"
Out2021$Ano <- "2021"
Nov2021$Mes <- "Novembro"
Nov2021$Ano <- "2021"
Dez2021$Mes <- "Dezembro"
Dez2021$Ano <- "2021"
Transferencias2021 <- rbind(Jan2021, Fev2021,
                            Mar2021, Abr2021,
                            Mai2021, Jun2021,
                            Jul2021, Ago2021,
                            Set2021, Out2021,
                            Nov2021, Dez2021)
write.csv(Transferencias2021, "Ano2021/Transferencias2021.csv", row.names = FALSE)
#########################################################################################
##******Geracao do Banco de Dados***********############################
#########################################################################################
# Clear plots
if(!is.null(dev.list())) dev.off()
# Clean workspace
rm(list=ls())
library("tidyverse")
library("data.table")
setwd("~/GitHub/PortalTransparencia/Transferencias")
# Clear console
cat("\014")
#Banco de dados Final
#TF2016 <- fread("Ano2016/Transferencias2016.csv", dec = ",", encoding = "Latin-1") %>%
#          filter(TIPO_FAVORECIDO %in% c("ADMINISTRAÇÃO PÚBLICA MUNICIPAL"))
#TF2017 <- fread("Ano2017/Transferencias2017.csv", dec = ",", encoding = "Latin-1") %>%
#          filter(TIPO_FAVORECIDO %in% c("ADMINISTRAÇÃO PÚBLICA MUNICIPAL"))
TF2018 <- fread("Ano2018/Transferencias2018.csv", dec = ",", encoding = "Latin-1") %>%
          filter(TIPO_FAVORECIDO %in% c("ADMINISTRAÇÃO PÚBLICA MUNICIPAL"))
TF2019 <- fread("Ano2019/Transferencias2019.csv", dec = ",", encoding = "Latin-1") %>%
          filter(TIPO_FAVORECIDO %in% c("ADMINISTRAÇÃO PÚBLICA MUNICIPAL"))
TF2020 <- fread("Ano2020/Transferencias2020.csv", dec = ",", encoding = "Latin-1") %>%
          filter(TIPO_FAVORECIDO %in% c("ADMINISTRAÇÃO PÚBLICA MUNICIPAL"))

Transferencias <- rbind(TF2018,
                        TF2019,
                        TF2020)
rm(TF2018, TF2019, TF2020)
saveRDS(Transferencias, "BancoDados/Transferencias.Rds")
# Clear plots
if(!is.null(dev.list())) dev.off()
# Clean workspace
rm(list=ls())
library("tidyverse")
library("data.table")
library("stringr")
library("lubridate")
setwd("~/GitHub/PortalTransparencia/Transferencias")
# Clear console
cat("\014")
Transferencias <- readRDS("BancoDados/Transferencias.Rds")
setwd("~/GitHub/PortalTransparencia/Transferencias/Enem/2018")
Enem2018 <- readRDS("Enem2018.Rds")
setwd("~/GitHub/PortalTransparencia/Transferencias/Enem/2019")
Enem2019 <- readRDS("Enem2019.Rds")
####################################
setwd("~/GitHub/PortalTransparencia/Transferencias/BancoDados")
df1 <- left_join(Transferencias,
                Enem2018,
                by = c("MUNICIPIO"="MUNICIPIO", "UF"="UF"))
df <- left_join(df1,
                Enem2019,
                by = c("MUNICIPIO"="MUNICIPIO", "UF"="UF"))
rm(Transferencias, Enem2018, Enem2019, df1)
df <- df %>% select(-c(1,2,4,9))
df <- df %>% filter(LINGUAGEM_CIDADA=="FUNDEB")
setwd("~/GitHub/PortalTransparencia/Transferencias/BancoDados")
saveRDS(df, "df.Rds")
df <- readRDS("df.Rds")

CP <- df %>% filter(MUNICIPIO=="CONCEICAO DO PARA")


library(tidyverse)
teste <- df %>% filter(LINGUAGEM_CIDADA=="SEM INFORMAÇÃO")

library(geobr)
df <- read_municipality(code_muni = "all")
names(df) <- c("code_muni",
               "MUNICIPIO",
               "code_state",
               "UF",
               "geom")
df <- df %>% select(1,2,4,5)
df$MUNICIPIO<- str_to_upper(df$MUNICIPIO)
df$MUNICIPIO <- str_trim(df$MUNICIPIO)
df$MUNICIPIO <- abjutils::rm_accent(df$MUNICIPIO)
df <- as.data.frame(df)
df1 <- Transferencias[1:10000,]
df3 <- left_join(df1,
                 df,
                 by = c("MUNICIPIO"="MUNICIPIO", "UF"="UF"))

Municipios <- read_municipality(
  code_muni = "all",
  year = 2010,
  simplified = TRUE,
  showProgress = TRUE
)

Regiao <- read_state(code_state = "all",year=2019)

Meso <- read_meso_region(
  code_meso = "all",
  year = 2018,
  simplified = TRUE,
  showProgress = TRUE
)
