library(shiny)
library(ggplot2)


# Server input to draw a plot
shinyServer(function(input, output) {
        
        output$plot <- renderPlot({
                
                # generate bins based on input$bins from ui.R
                df     <- mtcars
                y  <- df$mpg 
                x  <- df[,input$variable]
                
                # draw the histogram with the specified number of bins
                qplot(x, mpg, data=mtcars, geom=c("point", "smooth"), method="lm",
                      xlab = input$variable)
        })
        
        output$pred <- renderText({
                input$variable
        }) 
})