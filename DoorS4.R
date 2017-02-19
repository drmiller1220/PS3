##
#' S4 class "door"
#' 
#' An S4 class which represents a 'Let's Make a Deal!' door
#' 
#' @slot door A numeric value between 1 and 3 inclusive that represents the door selected.
#' If the numeric value inputted is not between 1 and 3 inclusive, the validity test
#' will throw an error.  If the input is not a single numeric value, the validity test will
#' throw an error.
#' 
#' @author David R. Miller

setClass('door',
         slots=c(door='numeric')
)

# validity test checks to make sure that the input is a single numeric value
# between 1 and 3

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

# initialization enables an object of class door to be created

setMethod("initialize",
          "door",
          function(.Object, ...) {
            value = callNextMethod()
            validObject(value)
            return(value)
          }
)