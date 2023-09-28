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
