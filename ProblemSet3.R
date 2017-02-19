door <- function(x){
  if(x %in% c(1,2,3)){
    structure(as.vector(x), class="door")
  } else {
    stop("User must select door 1, 2, or 3")
  }
}

door1 <- door(1)
door2 <- door(2)
door3 <- door(3)

##############

PlayGame <- function(x) UseMethod("PlayGame")
PlayGame.door <- function(x){
  selected_door <- x
  winning_door <- sample(x=1:3, size=1, replace=FALSE)
  if(selected_door==winning_door){
    print("Congratulations, you've just won a yuge, classy, fantastic new car!")
  } else {
    print("What a loser, you picked a goat!  Sad!")
  }
}
PlayGame.default <- function(x){
  print("Input must be of class 'door'")
}

#############

setClass('door',
         slots=c(door='numeric')
)

setValidity("door",
            function(object){
              test_number <- object@door %in% c(1,2,3)
              test_single <- length(object@door)==1
              if(test_number==FALSE){
                return("@door must be a value of 1, 2, or 3")
              }
              if(test_number==TRUE & test_single==FALSE){
                return("@door must be a single value of 1, 2, or 3")
              }
            }
)

setMethod("initialize",
          "door",
          function(.Object, ...) {
            value = callNextMethod()
            validObject(value)
            return(value)
          }
)

new("door", door=1)
new("door", door=k)

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

doorz <- new("door", door=1)

PlayGame(doorz)
