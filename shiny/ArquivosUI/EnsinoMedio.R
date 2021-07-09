tabsetPanel(
  tabPanel("Tabelas Simples",
           fluidRow(
             column(12,
                    DT::dataTableOutput("table1")))),
  ##
  tabPanel("Tabelas de Dupla Entrada",
           fluidRow(column(3,
                           selectInput("Opções",
                                       strong("Escolha uma opção:"),
                                       choices=c("Opção 1"="age2",
                                                 "Opção 2"="age3"),
                                       selected = "age2")),
                    column(9,
                           plotlyOutput("plot1", height = 800)))),
  tabPanel("Gráficos de Barras",
           fluidRow(column(3,
                           selectInput("Opções",
                                       strong("Escolha uma opção:"),
                                       choices=c("Opção 1"="age2",
                                                 "Opção 2"="age3"),
                                       selected = "age2")),
                    column(9,
                           plotlyOutput("plot1", height = 800))))

  ##

)# barra de navegacao interna
