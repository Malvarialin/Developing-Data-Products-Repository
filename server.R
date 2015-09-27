library(ggplot2)
library(datasets)



shinyServer(
  function(input, output) {
    
    
    output$inputValue<-renderPrint({input$radio})
    
    output$plot1 <- renderPlot ({
      if (input$radio=="mtcars$cyl"){
        ggplot(mtcars, aes(cyl, mpg)) + geom_point() + geom_smooth(method='lm')+labs(title='Cylinders vs MPG')
      }
      else if (input$radio=="mtcars$hp"){
        ggplot(mtcars, aes(hp, mpg)) + geom_point() + geom_smooth(method='lm')+labs(title='Horsepower vs MPG')
      }
      else if (input$radio=="mtcars$wt"){
        ggplot(mtcars, aes(wt, mpg)) + geom_point() + geom_smooth(method='lm')+labs(title='Weight vs MPG')
      }
      else if (input$radio=="mtcars$gear"){
        ggplot(mtcars, aes(gear, mpg)) + geom_point() + geom_smooth(method='lm')+labs(title='Forward Gears vs MPG')
      }
      else if (input$radio=="mtcars$carb"){
        ggplot(mtcars, aes(carb, mpg)) + geom_point() + geom_smooth(method='lm')+labs(title='Carburetors vs MPG')
      }
      else if (input$radio=="mtcars$disp"){
        ggplot(mtcars, aes(disp, mpg)) + geom_point() + geom_smooth(method='lm')+labs(title='Displacement vs MPG')
      }
    })
    }
    )
    
    
  