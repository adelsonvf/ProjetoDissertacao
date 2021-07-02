create_tab <- function(x){
  #x=TFJan2016
  #y=salario dos Transferencia
  library("tidyverse")
  library("stringr")
  #Sys.setlocale(category = "LC_TIME", locale = "pt_BR")
  #source("Funcoes/Siglas.R")
  options(datatable.fread.input.cmd.message=FALSE)
  Transferencia <- data.table::fread(x, dec = ",", encoding = "Latin-1")
  names(Transferencia) <- abjutils::rm_accent(names(Transferencia))
  #Transferencia <- abjutils::rm_accent_from_names(Transferencia)
  Transferencia <- subset(Transferencia, trimws(Transferencia$`NOME MUNICIPIO`) !="")
  #names(Transferencia)
  Transferencia <- Transferencia %>% select("TIPO TRANSFERENCIA"   ,                 
                                            "TIPO FAVORECIDO"       ,            
                                            "UF"                    ,            
                                            "CODIGO MUNICIPIO SIAFI",            
                                            "NOME MUNICIPIO"        ,            
                                            "NOME PROGRAMA"         ,            
                                            "NOME ACAO"             ,            
                                            "LINGUAGEM CIDADA"      ,            
                                            "CODIGO FAVORECIDO"     ,            
                                            "NOME FAVORECIDO"       ,            
                                            "VALOR TRANSFERIDO"     )
  names(Transferencia) <- c("TIPO_TRANSFERENCIA",
                            "TIPO_FAVORECIDO",
                            "UF",
                            "CODIGO_SIAFI",
                            "MUNICIPIO",
                            "PROGRAMA",
                            "ACAO",
                            "LINGUAGEM_CIDADA",
                            "CODIGO_FAVORECIDO",
                            "NOME_FAVORECIDO",
                            "VALOR")
  
  #Transformar as letras em maiusculas
  Transferencia$TIPO_TRANSFERENCIA<- str_to_upper(Transferencia$TIPO_TRANSFERENCIA)
  Transferencia$TIPO_FAVORECIDO   <- str_to_upper(Transferencia$TIPO_FAVORECIDO   )
  Transferencia$UF                <- str_to_upper(Transferencia$UF                )
  Transferencia$MUNICIPIO         <- str_to_upper(Transferencia$MUNICIPIO         )
  Transferencia$PROGRAMA          <- str_to_upper(Transferencia$PROGRAMA          )
  Transferencia$ACAO              <- str_to_upper(Transferencia$ACAO              )
  Transferencia$LINGUAGEM_CIDADA  <- str_to_upper(Transferencia$LINGUAGEM_CIDADA  )
  Transferencia$NOME_FAVORECIDO   <- str_to_upper(Transferencia$NOME_FAVORECIDO   )
  
  #Remover acentos desnecessarios
  #Transferencia$TIPO_TRANSFERENCIA<- abjutils::rm_accent()
  #Transferencia$TIPO_FAVORECIDO   <- abjutils::rm_accent()
  #Transferencia$UF                <- abjutils::rm_accent()
  #Transferencia$MUNICIPIO         <- abjutils::rm_accent()
  #Transferencia$PROGRAMA          <- abjutils::rm_accent()
  #Transferencia$ACAO              <- abjutils::rm_accent()
  #Transferencia$LINGUAGEM_CIDADA  <- abjutils::rm_accent()
  #Transferencia$NOME_FAVORECIDO   <- abjutils::rm_accent()
  #Apagar Espacos antes e apos o texto
  Transferencia$TIPO_TRANSFERENCIA<- str_trim(Transferencia$TIPO_TRANSFERENCIA)
  Transferencia$TIPO_FAVORECIDO   <- str_trim(Transferencia$TIPO_FAVORECIDO   )
  Transferencia$UF                <- str_trim(Transferencia$UF                )
  Transferencia$MUNICIPIO         <- str_trim(Transferencia$MUNICIPIO         )
  Transferencia$PROGRAMA          <- str_trim(Transferencia$PROGRAMA          )
  Transferencia$ACAO              <- str_trim(Transferencia$ACAO              )
  Transferencia$LINGUAGEM_CIDADA  <- str_trim(Transferencia$LINGUAGEM_CIDADA  )
  Transferencia$NOME_FAVORECIDO   <- str_trim(Transferencia$NOME_FAVORECIDO   )
  return(Transferencia)
}

