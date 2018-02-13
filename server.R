#You can try clicking on the pins to read the message

library(shiny)

shinyServer(function(input, output) {
  
  
  output$mymap <- renderLeaflet({
  if(identical(input$Places, "Gateway of India")) {
    my_map1 <- leaflet() %>%
      addTiles() %>%
      addMarkers(lat = 18.9220, lng = 72.8347,popup = "Gateway of India says Hello :)")
  }
    else{
      my_map2 <- leaflet() %>%
        addTiles() %>%
        addMarkers(lat = 18.963, lng = 72.9315,popup = "Elephanta Caves is an architectural masterpiece")
    }
  
})
})