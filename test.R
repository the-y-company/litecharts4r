devtools::load_all()
library(shiny)
library(echarts4r)

ui <- fluidPage(
  theme = bslib::bs_theme(5L),
  actionButton("render", "Render"),
  div(
    class = "row",
    div(
      class = "col-md-6",
      litecharts4rOutput("lite")
    ),
    div(
      class = "col-md-6",
      echarts4rOutput("ec")
    )
  )
)

server <- function(input, output, session){
  output$lite <- renderLitecharts4r({
    input$render
    litecharts4r() |>
      set_title(title = "Hello world!") |>
      set_x_axis(data = letters[1:20]) |>
      set_y_axis() |>
      add_serie(
        name = "serie 1",
        type = sample(c("line", "scatter"), 1),
        data = runif(20)
      ) |>
      add_serie(
        name = "serie 2",
        type = sample(c("line", "scatter"), 1),
        data = runif(20)
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
}

shinyApp(ui, server, options = list(port = 3000L))
