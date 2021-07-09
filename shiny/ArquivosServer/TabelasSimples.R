output$table1 <- DT::renderDataTable({
  tab <- df %>% filter(MUNICIPIO=="LAJINHA" & Mes=="Janeiro")
  tab1 <- data.frame(Nota_CN=c(unique(tab$NOTA_CN2018),unique(tab$NOTA_CN2019)),
                     Nota_CH=c(unique(tab$NOTA_CH2018),unique(tab$NOTA_CH2019)))

  DT::datatable(tab1,
                class = 'cell-border stripe',
                extensions = 'Buttons', options = list(
                  dom = 'Bfrtip',
                  buttons = c('pageLength','copy', 'csv', 'excel', 'pdf', 'print')
                ))
})
