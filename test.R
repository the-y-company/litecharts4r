packer::bundle_dev()
devtools::document()
devtools::load_all()
library(shiny)
library(echarts4r)

ui <- fluidPage(
  theme = bslib::bs_theme(5L),
  actionButton("render", "Render"),
  litecharts4rOutput("plot"),
  litecharts4rOutput("converted"),
  echarts4rOutput("ec")
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

  output$ec <- renderEcharts4r({
    input$render

    data.frame(
      x = 1:10,
      y1 = runif(10),
      y2 = runif(10)
    ) |>
      e_charts(x = x) |>
      e_line(y1) |>
      e_scatter(y2)
  })

  output$converted <- renderLitecharts4r({
    input$render

    data.frame(
      x = 1:10,
      y1 = runif(10),
      y2 = runif(10)
    ) |>
      e_charts(x = x) |>
      e_line(y1) |>
      e_scatter(y2) |>
      as_litecharts4r()
  })
}

shinyApp(ui, server, options = list(port = 3000L))
