...set <- function(l, what, ...){
  l$x$options[[what]] <- list(...)
  return(l)
}

...add <- function(l, what, ...){
  l$x$options[[what]] <- append(l$x$options[[what]], list(...))
  return(l)
}

set_title <- function(l, ...){
  ...set(l, "title", ...)
}

set_tooltip <- function(l, ...){
  ...set(l, "tooltip", ...)
}

set_x_axis <- function(l, ...){
  ...set(l, "xAxis", ...)
}

set_y_axis <- function(l, ...){
  ...set(l, "yAxis", ...)
}

add_serie <- function(l, ...){
  ...add(l, "series", list(...))
}

set_legend <- function(l, ...){
  ...set(, "legend", ...)
}

set_grid <- function(l, ...){
  ...set(, "grid", ...)
}

set_polar <- function(l, ...){
  ...set(, "polar", ...)
}

set_radius_axis <- function(l, ...){
  ...set(, "radiusAxis", ...)
}

set_angle_axis <- function(l, ...){
  ...set(, "angleAxis", ...)
}

add_data_zoom <- function(l, ...){
  ...add(, "dataZoom", ...)
}

add_visual_map <- function(l, ...){
  ...add(, "visualMap", ...)
}

set_axis_pointer <- function(l, ...){
  ...set(, "axisPointer", ...)
}

set_axis_pointer <- function(l, ...){
  ...set(, "axisPointer", ...)
}

set_toolbox <- function(l, ...){
  ...set(, "toolbox", ...)
}

set_brush <- function(l, ...){
  ...set(, "brush", ...)
}

set_geo <- function(l, ...){
  ...set(, "geo", ...)
}

set_parallel <- function(l, ...){
  ...set(, "parallel", ...)
}

set_parallel_axis <- function(l, ...){
  ...set(, "parallelAxis", ...)
}

set_single_axis <- function(l, ...){
  ...set(, "singleAxis", ...)
}

set_timeline <- function(l, ...){
  ...set(, "timeline", ...)
}

set_graphic <- function(l, ...){
  ...set(, "graphic", ...)
}

set_calendar <- function(l, ...){
  ...set(, "calendar", ...)
}

set_dataset <- function(l, ...){
  ...set(, "dataset", ...)
}

set_text_style <- function(l, ...){
  ...set(, "textStyle", ...)
}

set_state_animations <- function(l, ...){
  ...set(, "stateAnimations", ...)
}
