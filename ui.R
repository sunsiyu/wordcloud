## ui.R ##

fluidPage(
  
  titlePanel("My Word Cloud"),
  
  sidebarLayout(
    
    # Add items
    
    actionButton("update", "Change")
    
  ),
  
  mainPanel("hello",width=6)
)
