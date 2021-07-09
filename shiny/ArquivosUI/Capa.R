#tabPanel("Descrição",
         tabsetPanel(
           tabPanel("Sobre o Dashboard",

                    fluidRow(
                      column(12,
                             h1("Sobre o Dashboard"),
                             sidebarPanel(
                               p(style="text-align: justify;","Este dashboard é resultado do trabalho de
                                        Iniciação Ciêntífica voluntária da estudante do Curso de Ciência da Computação
                                        Isabella Menezes Ramos. Orientada pelo professor Fernando de Souza Bastos,
                                        ambos da Universidade Federal de Viçosa - campus UFV - Florestal."),
                               p(style="text-align: justify;","O código utilizado para construir
                                          a aplicação está disponível em um repositório aberto no GitHub
                                          (https://github.com/fsbmat-ufv/LeidenRanking) e pode futuramente ser
                                          replicado facilmente para novas atualizações do Leiden
                                          Ranking."),
                               br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(),
                             ),
                             h4(style="text-align: justify;","   O dashboard tem o intuito de analisar e mostrar de forma gráfica
                                       os dados fornecidos pelo Ranking CWTS Leiden, um ranking anual global de universidades de todo
                                       o mundo, baseado exclusivamente em indicadores bibliométricos. O Ranking fornece resultados sobre
                                        indicadores diversos, e seus resultados podem ser acessados pelo menu do dashboard."),
                             h4(style="text-align: justify;","Dentre os indicadores pertencentes ao Leiden Ranking, temos duas variantes principais: os indicadores dependentes de tamanho e os independentes de tamanho."),
                             h4(style="text-align: justify;","A partir dos indicadores acima, temos:"),
                             h4(style="text-align: justify;"," - Indicadores de impacto científico;"),
                             h4(style="text-align: justify;"," - Indicadores de colaboração;"),
                             h4(style="text-align: justify;"," - Indicadores de acesso aberto;"),
                             h4(style="text-align: justify;"," - Indicadores de gênero."),
                             h4(style="text-align: justify;", "O diferencial dos demais rankings é que o CWTS Leiden Ranking
                                         não gera apenas um único ranking com as melhores universidades,  ele disponibiliza uma série de
                                         indicadores para que você possa analisar e chegar na sua conclusão sobre quais são as melhores."),
                             h4(style = "text-align: justify", "O nosso foco é fazer análises focando as universidades do Brasil
                                         que participam do ranking, que ao todo são 30 universidades. Nossas análises gráficas, podem ser
                                         acessadas pelo menu superior."),
                      )),
           )

         )# barra de navegacao interna
#)# barra de navegacao superior
