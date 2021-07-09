tabsetPanel(
  ##
  tabPanel("SubMenu2.1",
           fluidRow(column(9,
                           leafletOutput("plot2", height = 600)))),
  tabPanel("SubMenu2.2",
           fluidRow(column(9,
                           plotlyOutput("plot3", height = 600))))


)# barra de navegacao interna
