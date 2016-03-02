# Build Plot
build_plot <- function(data, Petal = 'Petal.Length', Sepal = 'Sepal.Length', search = 'setosa') {

  # Get x and y max
  xmax <- max(data[,eval(Petal)]) * 1.2
  ymax <- max(data[,eval(Sepal)]) * 1.2
  
  # Filter down to state, then graph, then return
  data %>% 
    filter(grepl(search, Species)) %>% 
    plot_ly(x = eval(parse(text = Petal)), 
            y = eval(parse(text = Sepal)), 
            mode='markers', 
            marker = list(
              opacity = 0.4,
              size = 10
            )) %>% 
    layout(xaxis = list(range = c(0, xmax), title = Petal), 
           yaxis = list(range = c(0, ymax), title = Sepal)
    ) %>% 
    return()
}
