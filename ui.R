library(shiny)
library(plotly)
shinyUI(fluidPage(titlePanel('Iris'),
# Create sidebar layout
  sidebarLayout(
    
  # Side panel for controls
    sidebarPanel(
      
    # Input to select variable to plot
      selectInput("Petal", label = h3("Petal: X variable"), 
        choices = list("Length" = 'Petal.Length', "Width" = 'Petal.Width'), 
        selected = 'Petal.Length'),
      
      selectInput("Sepal", label = h3("Sepal: Y variable"), 
        choices = list("Length" = 'Sepal.Length', "Width" = 'Sepal.Width'), 
        selected = 'Sepal.Length'),
      
      selectInput('search', label=h3("Species"), 
        choices = list("setosa" = 'setosa', "versicolor" = 'versicolor', 
                       "virginica" = 'virginica'),
        selected = 'setosa')
    ),
    
    # Main panel: display plotly scatter plot
    mainPanel(
      plotlyOutput('plot')
    )
  )
))
