#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("movie market gross prediction using multiple linear regression"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("Votes",
                  "Select Votes:",
                  min = 0,
                  max = 600000,
                  value = 10000),
      sliderInput("Score2",
                  "Select Movie Score:",
                  min = 10,
                  max = 100,
                  value =60),
      sliderInput("Year",
                  "Select Movie Year:",
                  min = 1990,
                  max = 2019,
                  value =2010),
      radioButtons("Level2", "Select movie level:",
                   list("not R" = "not R",
                        "R" = "R"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tableOutput("distPlot")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$distPlot <- renderTable({
    data1 <- read.csv('movies.csv')
    data1$Level2 <- as.factor(data1$Level2)
    mfinal2<-lm(gross ~ Year + Level2
                + Score2 + Votes , data = data1)
    parameterset<-data.frame(Year=input$Year, Level2 = input$Level2,
                             Score2=input$Score2, Votes=input$Votes)
    result<-(predict(mfinal2, parameterset))
    result
  })
}

# Run the application 
shinyApp(ui = ui, server = server)