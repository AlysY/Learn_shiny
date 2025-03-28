# 1. The default shiny app from Posit if you open a new file that is a shiny app

# How to create this script for yourself:
# File > New file > Shiny web app... 


# Tasks for you to think about *************************************************************************** *
# 1. Using all the default code with no changes, click "Run App" in the top Right corner of this screen
# 2. Same again but highlight all the code in the script and run it (On windows, use ctrl + enter. On Mac, cmd + Enter)
# 3. Change one aspect at a time and re run the model to see what happens. Easiest will be to change the text
# in the titlePanel , the slider input where it says "number of bins", the xlab or main title of the histogram plot
# if you change the word "bins" in slider input, then you need to update the second half of input$bins to match

# **************************************************************************** *


# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white',
             xlab = 'Waiting time to next eruption (in mins)',
             main = 'Histogram of waiting times')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
