#' As Litecharts
#' 
#' Render a plot object from {echarts4r} use litecharts4r.
#' 
#' @param e The {echarts4r} plot object to render.
#' @inheritParams litecharts4r
#'
#' @export
as_litecharts4r <- function(e){
  UseMethod("as_litecharts4r")
}

#' @method as_litecharts4r echarts4r
#' @export
as_litecharts4r.echarts4r <- function(e, width = NULL, height = NULL, elementId = NULL){
  do.call(litecharts4r, e$x$opts)
}

