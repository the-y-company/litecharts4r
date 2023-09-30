# litecharts4r

A lite wrapper around [echarts.js](https://echarts.apache.org/en/index.html) and [echarts4r](https://echarts4r.john-coene.com/).

## Install

```r
# install.packages("remotes")
remotes::install_github("the-y-company/litecharts4r")
```
## Examples

Use the lite API.

```r
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
```

Use an echarts4r object.

```r
data.frame(
  x = 1:10,
  y1 = runif(10),
  y2 = runif(10)
) |>
  e_charts(x = x) |>
  e_line(y1) |>
  e_scatter(y2) |>
  as_litecharts4r()
```

## echarts4r vs. litecharts4r

The main difference with echarts4r is a more performant renderer that makes
for nicer visualisations transition, particularly using Shiny.
The latter also allows doing away with all the convoluted business of "proxies,"
making the use of the library far simpler.

```r
library(shiny)
library(echarts4r)
library(litecharts4r)

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
```
