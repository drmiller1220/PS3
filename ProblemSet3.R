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
    print("Congratulations, you've just won a yuge, fantastic new car!")
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
              test_numeric <- is.numeric(object@door)
              test_number <- object@door %in% c(1,2,3)
              if(test1==FALSE & test2==FALSE){
                return("@door must be a numeric value of 1, 2, or 3")
              }
              if(test1==TRUE & test2==FALSE){
                return("@door must be a value of 1, 2, or 3")
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
