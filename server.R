library(shiny)

shinyServer(
     function(input, output) {
          output$plot1 <- renderPlot ({
               a<-input$a; b<-input$b; c<-input$c; d<-input$d
               z<-input$zoom/10
               xmin<-input$xint[1];xmax<-input$xint[2]
               ymin<-input$yint[1];ymax<-input$yint[2]
               plot(0,0,type="n",xlim=c(xmin,xmax),ylim=c(ymin,ymax), xlab="X-axis",ylab="Y-axis")
               abline(h=0);abline(v=0)
               abline(a,b,col=2)
               abline(c,d,col=3)
               
          })
          output$text <- renderUI({
               a<-input$a; b<-input$b; c<-input$c; d<-input$d
               if (b==d) {
                    if (a==c) {
                         str1<-"Both lines are the same"
                    } else {
                         str1<-"Both lines are parallel"
                    }
               } else {
                    str1 <- paste("Point: (", (a-c)/(d-b),",",(a*d-b*c)/(d-b),")") 
                    }
               HTML(paste(str1))
               
          })
     })