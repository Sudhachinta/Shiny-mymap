
## Integrating leaflet with Shiny this app marks 2 of the famous places in India

library(shiny)
library(leaflet)

shinyUI(fluidPage(
  titlePanel("Places in India"),
  h4("Select one of the options and click the pins"),
  
  r_colors <- rgb(t(col2rgb(colors()) / 255)),
  names(r_colors) <- colors(),
  
  radioButtons("Places", "Places:", choices = c("Gateway of India", "Elephanta Caves")),
  verbatimTextOutput("click"),
    leafletOutput("mymap")
  
))