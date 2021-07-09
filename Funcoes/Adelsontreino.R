rm(list=ls())#limpar memoria
cat("\014")#limpar console
library(data.table)
library(tidyverse)
library(plotly)
setwd("~/Dissertacao/ProjetoDissertacao/shiny/BancoDados")
df <- readRDS("df.Rds")
df <- df[1:10000,]
