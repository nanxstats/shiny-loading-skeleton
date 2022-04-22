tabPanel(
  title = "Dependencies",
  fluidRow(
    column(
      width = 10, offset = 1,
      fluidRow(
        column(width = 6, highcharter::highchartOutput("chart1")),
        column(width = 6, highcharter::highchartOutput("chart2")),
      )
    )
  )
)
