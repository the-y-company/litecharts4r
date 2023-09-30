#' Chrat
#'
#' Initialise a chart.
#'
#' @param width,height Dimensions of plot.
#' @param elementId ID of htmlwidgets (shadow DOM)
#'
#' @import htmlwidgets
#'
#' @export
litecharts4r <- function(..., width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    options = list(...)
  )
  
  attr(x, 'TOJSON_ARGS') <- list(dataframe = "rows", auto_unbox = TRUE)

  # create widget
  htmlwidgets::createWidget(
    name = 'litecharts4r',
    x,
    width = width,
    height = height,
    package = 'litecharts4r',
    elementId = elementId
  )
}

#' Shiny bindings for litecharts4r
#'
#' Output and render functions for using litecharts4r within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a litecharts4r
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name litecharts4r-shiny
#'
#' @export
litecharts4rOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'litecharts4r', width, height, package = 'litecharts4r')
}

#' @rdname litecharts4r-shiny
#' @export
renderLitecharts4r <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, litecharts4rOutput, env, quoted = TRUE)
}

litecharts4r_html <- function(id, class, style, ...){
  htmltools::tag(
    "lit-echarts", 
    list(
      id = id, 
      class = class, 
      style = sprintf("%s;display:block;width:100%%;", style)
    )
  )
}
