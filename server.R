library(plotly)
library(shiny)
library(dplyr)
library(RCurl)
source('build_plot.R')

# dataset
data <- iris

shinyServer(function(input, output) {
  # Create a plot via your build_plot function
  output$plot <- renderPlotly({ 
    build_plot(data, input$Petal, input$Sepal, input$search)  
  })
})