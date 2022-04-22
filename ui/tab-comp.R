tabPanel(
  title = "Computation",
  fluidRow(
    column(
      width = 10, offset = 1,
      fluidRow(
        column(
          width = 4,
          card(
            "Card Title",
            textInput("input1", label = "Text input label", value = "bar", width = "100%"),
            numericInput("input2", label = "Numeric input label", value = 42, width = "100%"),
            textAreaInput("input3", label = "Text area input", width = "100%", resize = "none"),
            actionButton("input4", label = "Action Button", class = "btn btn-primary")
          )
        ),
        column(
          width = 8,
          card("Card Title", plotOutput("plot"))
        )
      )
    )
  )
)
