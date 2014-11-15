library(shiny)
data(mtcars)
fit <- lm(mpg ~ as.factor(cyl) + as.factor(am), data = mtcars)
shinyServer(
  function(input, output) {
    output$oid1 <- renderText({input$id1})
    output$oid2 <- renderText({
      if(input$id2 == 1) "Manual" else "Auto"})
    output$oid3 <- renderText({
      input$predictButton 
      isolate(predict(fit, data.frame(cyl = input$id1, am = input$id2)))
    })
  }
)