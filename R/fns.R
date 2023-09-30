...set <- function(l, what, ...){
  l$x$options[[what]] <- list(...)
  return(l)
}

...add <- function(l, what, ...){
  l$x$options[[what]] <- append(l$x$options[[what]], list(...))
  return(l)
}

#' Lite Options
#' 
#' Lite wrapper to build the echarts options.
#' 
#' @param l litecharts4r object.
#' @param ... Options.
#' 
#' @name lite_options
#' @export
set_title <- function(l, ...){
  ...set(l, "title", ...)
}

#' @name lite_options
#' @export
set_tooltip <- function(l, ...){
  ...set(l, "tooltip", ...)
}

#' @name lite_options
#' @export
set_x_axis <- function(l, ...){
  ...set(l, "xAxis", ...)
}

#' @name lite_options
#' @export
set_y_axis <- function(l, ...){
  ...set(l, "yAxis", ...)
}

#' @name lite_options
#' @export
add_serie <- function(l, ...){
  ...add(l, "series", list(...))
}

#' @name lite_options
#' @export
set_legend <- function(l, ...){
  ...set(, "legend", ...)
}

#' @name lite_options
#' @export
set_grid <- function(l, ...){
  ...set(, "grid", ...)
}

#' @name lite_options
#' @export
set_polar <- function(l, ...){
  ...set(, "polar", ...)
}

#' @name lite_options
#' @export
set_radius_axis <- function(l, ...){
  ...set(, "radiusAxis", ...)
}

#' @name lite_options
#' @export
set_angle_axis <- function(l, ...){
  ...set(, "angleAxis", ...)
}

#' @name lite_options
#' @export
add_data_zoom <- function(l, ...){
  ...add(, "dataZoom", ...)
}

#' @name lite_options
#' @export
add_visual_map <- function(l, ...){
  ...add(, "visualMap", ...)
}

#' @name lite_options
#' @export
set_axis_pointer <- function(l, ...){
  ...set(, "axisPointer", ...)
}

#' @name lite_options
#' @export
set_axis_pointer <- function(l, ...){
  ...set(, "axisPointer", ...)
}

#' @name lite_options
#' @export
set_toolbox <- function(l, ...){
  ...set(, "toolbox", ...)
}

#' @name lite_options
#' @export
set_brush <- function(l, ...){
  ...set(, "brush", ...)
}

#' @name lite_options
#' @export
set_geo <- function(l, ...){
  ...set(, "geo", ...)
}

#' @name lite_options
#' @export
set_parallel <- function(l, ...){
  ...set(, "parallel", ...)
}

#' @name lite_options
#' @export
set_parallel_axis <- function(l, ...){
  ...set(, "parallelAxis", ...)
}

#' @name lite_options
#' @export
set_single_axis <- function(l, ...){
  ...set(, "singleAxis", ...)
}

#' @name lite_options
#' @export
set_timeline <- function(l, ...){
  ...set(, "timeline", ...)
}

#' @name lite_options
#' @export
set_graphic <- function(l, ...){
  ...set(, "graphic", ...)
}

#' @name lite_options
#' @export
set_calendar <- function(l, ...){
  ...set(, "calendar", ...)
}

#' @name lite_options
#' @export
set_dataset <- function(l, ...){
  ...set(, "dataset", ...)
}

#' @name lite_options
#' @export
set_text_style <- function(l, ...){
  ...set(, "textStyle", ...)
}

#' @name lite_options
#' @export
set_state_animations <- function(l, ...){
  ...set(, "stateAnimations", ...)
}
