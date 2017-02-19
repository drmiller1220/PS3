##
#' \code{PlayGame} method for class \code{door}
#' 
#' \code{PlayGame.door} uses an object of class \code{door} to play 'Let's make a deal.'  Given
#' an object of class \code{door}, \code{PlayGame.door} randomly samples among doors 1, 2, and 3,
#' and checks if the sampled door matches the door in the \code{door} object.  If the door 
#' values match, the user is informed that they have won the game.  If the values do not
#' match, the user is informed that they have lost the game.
#' 
#' @param x a \code{door} object
#' 
#' @return If \code{x} is equal to the door randomly sampled by \code{PlayGame.door}, the
#' user is informed that they have won the game; otherwise, the user is informed that they
#' have lost the game.
#' 
#' @author David R. Miller
#' 

PlayGame.door <- function(x){
  selected_door <- x
  winning_door <- sample(x=1:3, size=1, replace=FALSE)
  if(selected_door==winning_door){
    print("Congratulations, you've just won a yuge, classy, fantastic new car!")
  } else {
    print("What a loser, you picked a goat!  Sad!")
  }
}