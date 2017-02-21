##
#' Default method for generic function for \code{PlayGame}
#' 
#' This is the default method for the generic function \code{PlayGame}.  \code{PlayGame} 
#' can only be meaningfully used by objects of class \code{door}.  Therefore, 
#' \code{PlayGame.default} informs the user that they need an object of \code{door} 
#' to use play 'Let's Make a Deal.'
#' 
#' @param x an object of a class other than \code{door}
#' 
#' @return The user is informed that they need to use an object of \code{door} to play
#' 'Let's Make a Deal.'
#' 
#' @author David R. Miller
#' 

PlayGame.default <- function(x){ # because PlayGame is only useful for an object of
  # class 'door,' we want to help the user understand why an object that is not of 
  # class 'door' does not allow them to play the game; thus, the default method 
  # for PlayGame (which, in effect, is the method for all non-door objects); thus,
  # the default method for PlayGame merely tells the user that they must have a 
  # door object
  print("Input must be of class 'door' in order to play 'Let's Make a Deal'")
}