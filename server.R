## server.R ##

library(shiny)

function(input, output, session){
  
  # Define a reactive expression for the document term matrix
  terms <- reactive({
    
    # Change when the "update" button is pressed...
    input$update
    # ... but not for anything else
    isolate({
      withProgress({
        setProgress(message = "Processing corpus...")
        getTermMatrix(input$selection)
      })
    })
  })
  
  wordcloud_rep <- repeatable(wordcloud)
  
  output$plot <- renderPlot({
    
    v <- terms()
    wordcloud_rep(names(v), v, scale = c(4, 0.5),
                  min.freq = input$freq, max.words = input$max, 
                  colors = brewer.pal(8, "Dark2"))
  })
  
}
