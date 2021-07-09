#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Define UI for application
shinyUI(fluidPage(
    navbarPage(title="Aprender a Fiscalizar",
               tabPanel("Descrição",
                        source(file="ArquivosUi/Capa.R", local = T, encoding = "UTF-8")[1]
               ),
               tabPanel("Ensino Fundamental Anos Iniciais",
                        source(file="ArquivosUi/EnsinoFundamentalAnosIniciais.R", local = T, encoding = "UTF-8")[1]
                    ),

               tabPanel("Ensino Fundamental Anos Finais",
                        source(file="ArquivosUi/EnsinoFundamentalAnosFinais.R", local = T, encoding = "UTF-8")[1]
               ),
               tabPanel("Ensino Médio",
                        source(file="ArquivosUi/EnsinoMedio.R", local = T, encoding = "UTF-8")[1]
               )

    )#navbarPage
)#fluidPage
)#shinyUI
