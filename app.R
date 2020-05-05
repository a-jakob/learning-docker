#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Docker Test"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            textInput("text",
                        "Schreib etwas")),

        # Show a plot of the generated distribution
        mainPanel(
           textOutput("text2")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$text2 <- renderText({
        x <- paste("Du hast",input$text,"geschrieben")
        print(x)

    })
}

# Run the application 
shinyApp(ui = ui, server = server)
