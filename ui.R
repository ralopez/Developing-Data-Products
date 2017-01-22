library(shiny)

shinyUI(pageWithSidebar(
     headerPanel("Two Lines & their Intersection"),
     sidebarPanel(
          h4('Please, enter only real numbers'),
          h2('Line 1 (red)'),
          numericInput('a', 'Y-Intercept', 0),
          numericInput('b', 'Slope', 0),
          h2('Line 2 (green)'),
          numericInput('c', 'Y-Intercept', 0),
          numericInput('d', 'Slope', 0),
          h2('Intersection'),
          htmlOutput("text")
     ),
     mainPanel(
          h4('Choose any two (non-vertical) lines and this application will yield their intersection.'),
          h4('It will also draw the lines in the selected xy intervals'),
          plotOutput("plot1"),
          sliderInput('xint', 'X-axis Interval', value=c(-10,10), min = -50, max = 50, step = 1),
          sliderInput('yint', 'Y-axis Interval', value=c(-10,10), min = -50, max = 50, step = 1)
     ))
)
