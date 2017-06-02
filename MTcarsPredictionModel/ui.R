library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Miles per gallon model based on the selected variable"),
        
        # Sidebar with controls to select the variable to plot against mpg
        # and to specify whether outliers should be included
        sidebarPanel(
                selectInput("variable", "Pick the variable for the model:",
                            list("Number of cylinders" = "cyl",
                                 "Displacement (cu.in.)" = "disp",
                                 "Gross horsepower" = "hp",
                                 "Weight (1000 lbs)" = "wt",
                                 "Transmission" = "am",
                                 "Gears" = "gear"))
        ),
        
        # Show the caption and plot of the requested variable against mpg
        mainPanel(
                h3("Mpg (from the mtcars datataset) predicted from the variable:",
                   textOutput("pred")),
                
                plotOutput("plot")
        )
))