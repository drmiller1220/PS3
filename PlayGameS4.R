##
#' S4 "PlayGame" method for class "door"
#' 
#' PlayGame plays "Let's Make a Deal!" by randomly selected a number between 1 and 3, and
#' comparing that number with the number associated with the inputted \code{door} object.  If
#' the randomly sampled door and the value for the \code{door} object match, then the user is
#' informed that he has won the game; otherwise, the user is informed that he has lost the game.
#' 
#' @param object a \code{door} object
#' 
#' @return If the randomly sampled door and the value for the \code{door} object match, 
#' then the user is informed that he has won the game; otherwise, the user is informed
#' that he has lost the game.
#' 
#' 
#' @author David R. Miller
#' 

setGeneric("PlayGame",
           function(object="door"){
             standardGeneric("PlayGame")
           }
)

setMethod("PlayGame",
          "door",
          function(object){
            selected_door <- object@door
            winning_door <- sample(x=1:3, size=1, replace=FALSE)
            if(selected_door==winning_door){
              print("Congratulations, you've just won a yuge, classy, fantastic new car!")
            } else {
              print("What a loser, you picked a goat!  Sad!")
            }
          }
)