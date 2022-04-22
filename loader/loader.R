loaderDependency <- function() {
  htmltools::htmlDependency(
    name = "loader",
    version = "0.1.0",
    src = c(file = "loader/"),
    stylesheet = c("loader.css", "bootstrap.min.css")
  )
}

card <- function(title, ...) {
  div(
    class = "card",
    p(class = "card-header", title),
    div(class = "card-body", ...)
  )
}

useLoader <- function() {
  loaderDiv <- div(
    class = "loader", id = "loader",
    div(
      class = "container-fluid loading-skeleton",
      style = "margin-top: 76px;",
      fluidRow(
        column(
          width = 10, offset = 1,
          fluidRow(
            column(
              width = 4,
              card(
                "Card Title",
                textInput("loader_input1", label = "Text input label", width = "100%"),
                textInput("loader_input2", label = "Text input label", width = "100%"),
                textAreaInput("loader_input3", label = "Text area input", width = "100%", resize = "none"),
                actionButton("loader_input4", label = "Action Button", class = "btn btn-primary")
              )
            ),
            column(
              width = 8,
              card("Card Title", img(src = "placeholder.svg", width = "100%"))
            )
          )
        )
      )
    )
  )
  tagList(loaderDiv, loaderDependency())
}
