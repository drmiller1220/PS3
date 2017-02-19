##
#' Generic function for \code{PlayGame}
#' 
#' This is the generic function for \code{PlayGame}.  \code{PlayGame} can only be meaningfully
#' used by objects of class \code{door}.
#' 
#' @param x an object used to select a method.
#' 
#' @author David R. Miller
#' 

PlayGame <- function(x){
  UseMethod("PlayGame")
}