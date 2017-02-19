##
#' Create an object of class \code{door}
#'
#' @param x A single integer between 1 and 3 (inclusive)
#' 
#' @return If \code{x} is a single integer between 1 and 3 (inclusive), then \code{x}
#' is returned with its class assigned to \code{door}.  If \code{x} is not an integer,
#' or is not a single integer, an error message is returned insructing the user to enter
#' an integer, or to enter a single integer, respectively.
#' 
#' @author David R. Miller
#'


door <- function(x){
  if(length(x)==1 & x %in% c(1,2,3)){
    structure(as.vector(x), class="door")
  } else {
    stop("User must select only one of the following numeric door values: 1, 2, or 3")
  }
}