#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
library(ggplot2)
library(grid)
library(gridExtra)
data(ChickWeight)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$modelPlot <- renderPlot({
    
    # filter chick weight data based on input$dietType from ui.R
    dietType <- input$dietType
    cwsub <- filter(ChickWeight,Diet==dietType)
    
    # Define regression model and generate plot usig ggplot
    
    ggplotRegmodel <- function (fit) {
      ggplot(fit$model, aes_string(x = names(fit$model)[2], y = names(fit$model)[1])) + 
        geom_point() +
        stat_smooth(method = "lm", col = "red") +
        labs(title = paste(" P =",signif(summary(fit)$coef[2,4], 5),
             "Adj R2 = ",signif(summary(fit)$adj.r.squared, 5),
             "Intercept =",signif(fit$coef[[1]],5 ),
             " Slope =",signif(fit$coef[[2]], 5)),
             x="Time (in Days)",y="Chick Weight (in Grams)")
        }
    
    # Plot regression model for prediction of chick weight over time based on diet
    fit1 <- lm(weight ~ Time,data=cwsub)
    ggplotRegmodel(fit1)  
  })
  
})
