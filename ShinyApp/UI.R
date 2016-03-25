library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Car Performance by Indicator"),
        
        sidebarPanel(
                h3("Application Summary"),
                p("Toggle the below indicators to desired values and view ideal cars and mean performance"),
                p("If you do not see any results in the main panel that means there are no cars in the mtcars dataset satifying the inputted indicators"),
                br(),
                h3("Indicators"),
                sliderInput("dispInput","Displacement",0,500,c(0,500)),
                radioButtons("CylInput","Cylinders",
                             choices=c("4","6","8"),selected = "4"),
                selectInput("gearInput","Gear",choices=c("3","4","5"),selected = "3")
                ##submitButton('Submit')
        ),
        mainPanel(
                h3('Results'),
                h4('You selected this cylinder Input'),
                verbatimTextOutput('CylInputValue'),
                h4('You selected this gear Input'),
                verbatimTextOutput('GearInputValue'),
                h4('Which Resulted in these selection of cars:'),
                tableOutput("view"),
                h4('And finally results in this average MPG and HP across the cars:'),
                verbatimTextOutput('MPGprediction')
        )
))















