MyMap-Places in India
========================================================
author: Sudha
date: 2/13/2018
autosize: true

Basic Idea 
========================================================

This is a reproducible pitch for the MyMap app created as part of the data science specialization course.

You just have to click the link below to navigate to the App.
<https://sudhachinta.shinyapps.io/MyMap/>

You can find the total code for the app i,e the UI.R and the server.R files below:

The required documentation for the app function is present in the app. 

App function
========================================================
By integrating leaflet into the app, I have created a fun app where you can one of the famous places in Mumbai. 

The function is pretty simple. You just have to select one of the options and click on the pins for the pop-up. 

Required packages and related code
========================================================
We require leaflet and shiny packages for this app. Here is the code for UI.R

```r
library(shiny)
library(leaflet)

shinyUI(fluidPage(
  titlePanel("Places in India"),
  h4("Select one of the options and click the pins"),
  
  r_colors <- rgb(t(col2rgb(colors()) / 255)),
  names(r_colors) <- colors(),
  
  radioButtons("Places", "Places:", choices = c("Gateway of India", "Elephanta Caves")),
    leafletOutput("mymap")
))

server:
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
```

Reference and inspiration:
========================================================
This graph is inspired by and I have taken the refernce of the leaflet-shiny integration documentation.

Here is the link through which you can take a look:
<https://rstudio.github.io/leaflet/shiny.html>
