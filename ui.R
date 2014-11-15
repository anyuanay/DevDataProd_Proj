shinyUI(fluidPage(
  titlePanel("Mileage Prediction (Miles Per Gallon) for Different 
             Types of Cars"),
  sidebarLayout(
    sidebarPanel(
      h4('Select Number of Cylinders and Transmission Type'),
      numericInput('id1', 'Number of Cylinders:', 4, min = 4, max = 8, step = 2),
      radioButtons("id2", "Transimission Type:",
                         c("Auto" = "0",
                           "Manual" = "1")),
      actionButton("predictButton", "Predict!")
    ),
    mainPanel(
      h2("Introduction"),
      p("This application predicts the mileage of a vehicle according its 
        number of cylinders and transimission type. The application uses 
        the 'mtcars' dataset for builidng a linear regression 
        prediction model"),
      h2("Usage"),
      p("On the left-hand side panel, please select the number of cylinders 
        and the transimission type. Click the 'Predict!' button. The selected
        options and the predicted result are shown in the following area."),
      h4('Car Type and Prediction Result'),
      h5('Number of Cylinders:'),
      verbatimTextOutput("oid1"),
      h5('Transmission Type:'),
      verbatimTextOutput("oid2"),
      h5('Predicted Result'),
      verbatimTextOutput("oid3"),
      h2("Source Code"),
      p("The source code is located in the following gibhub repository:"),
      a("https://github.com/anyuanay/DevDataProd_Proj", href = "https://github.com/anyuanay/DevDataProd_Proj")
    )
  )
))