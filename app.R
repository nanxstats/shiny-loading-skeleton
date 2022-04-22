library(shiny)

source("loader/loader.R", local = TRUE)

ui <- function(request) {
  tagList(
    useLoader(),
    shinyjs::useShinyjs(),
    uiOutput("ui_main")
  )
}

server <- function(input, output, session) {
  output$ui_main <- renderUI(source("ui/main.R", local = TRUE)$value)
  source("server/main.R", local = TRUE)$value
  shinyjs::delay(15000, shinyjs::hide("loader"))
}

shinyApp(ui, server)
