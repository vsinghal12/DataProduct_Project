library(shiny)
library(datasets)


data("mtcars")



shinyServer(
        function(input,output){
                output$CylInputValue<-renderPrint({input$CylInput})
                output$GearInputValue<-renderPrint({input$gearInput})
                output$view<-renderTable({head(subset(mtcars,gear==input$gearInput&cyl==input$CylInput&disp>=input$dispInput[1]&disp<=input$dispInput[2])[order(-subset(mtcars,gear==input$gearInput&cyl==input$CylInput&disp>=input$dispInput[1]&disp<=input$dispInput[2])$mpg),],5)})
                output$MPGprediction<-renderPrint({colMeans(head(subset(mtcars,gear==input$gearInput&cyl==input$CylInput&disp>=input$dispInput[1]&disp<=input$dispInput[2])[order(-subset(mtcars,gear==input$gearInput&cyl==input$CylInput&disp>=input$dispInput[1]&disp<=input$dispInput[2])$mpg),],5)[c(1,4)])})        
        }
)

