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

PlayGame.door <- function(x){ # initializing function for method for PlayGame with
  # object of class door
  winning_door <- sample(x=1:3, size=1, replace=FALSE) # sampling from the
  # available doors to identify which door has the car
  if(x==winning_door){ # if statement for if the door selected is the door with 
    # the car; printing messages for whether the contestant wins or loses
    print("Congratulations, you've just won a yuge, classy, fantastic new car!")
  } else {
    print("What a loser, you picked a goat!  Sad!")
  }
}