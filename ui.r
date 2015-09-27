
library(shiny)
library(datasets)
library(ggplot2)

shinyUI(pageWithSidebar(
  headerPanel('Quick MTcars Data Plot'),
  
  sidebarPanel(
    radioButtons("radio", label = h3("Radio buttons"),
                 choices = list("Number of Cylinders" = 'mtcars$cyl', 
                      "Displacement (cu.in)"='mtcars$disp',
                      "Engine Horsepower" = 'mtcars$hp',
                      "Weight (lb/1000)"='mtcars$wt',
                      "Number of Forward Gears"='mtcars$gear',
                      "Number of Carburetors"='mtcars$carb')
                      
                 ),
    h3('Quick Documentation'),
    p("Hello! This mini app plots the different variables of the mtcars dataset provided by R against the gas milage of that particular vehicle, and then displays a simple linear regression line through it for your viewing pleasure.
      All you have to do is select the variable you are interested in via radio button and the server does the plot calculations for you!")
  ),
  
  mainPanel(
      
    
    p('Your Selected Variable'),
    verbatimTextOutput("inputValue")
    ,
    
    plotOutput("plot1")
    
    
  )
  
  
  
))