packer::bundle_dev()
devtools::document()
devtools::load_all()
library(shiny)

ui <- fluidPage(
  theme = bslib::bs_theme(5L),
  actionButton("render", "Render"),
  litecharts4rOutput("plot")
)

server <- function(input, output, session){
  output$plot <- renderLitecharts4r({
    input$render
    litecharts4r() |>
      set_title(title = "Hello world!") |>
      set_x_axis(data = letters[1:20]) |>
      set_y_axis() |>
      add_serie(
        name = "serie 1",
        type = sample(c("line", "scatter"), 1),
        data = runif(20),
        universalTransition = TRUE,
        animationDurationUpdate = 1000L
      ) |>
      add_serie(
        name = "serie 2",
        type = sample(c("line", "scatter"), 1),
        data = runif(20),
        universalTransition = TRUE,
        animationDurationUpdate = 1000L
      )
  })
}

shinyApp(ui, server, options = list(port = 3000L))
