## ui.R ##
library(shiny)
fluidPage(
  
  titlePanel("My Word Cloud"),
  
  sidebarLayout(
    
    sidebarPanel(
      selectInput("selection", "Choose a txt: ",
                  choices = books),
      actionButton("update", "Change"),
      hr(),
      sliderInput("freq", "Minimum Frequency: ", 1, 50, 15),
      sliderInput("max", "Maximum No. of words: ", 1, 300, 100)
      
    ),
  
    # Show Word Cloud
    mainPanel(
      plotOutput("plot")
    )
  )
)
