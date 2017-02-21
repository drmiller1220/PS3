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

setClass('door', # creating an S4 'door' class
         slots=c(door='numeric') # 'door' objects have one numeric slots, which is intended
         # to take one number between 1 and 3 as an input (to be validated)
)

# validity test checks to make sure that the input is a single numeric value
# between 1 and 3

setValidity("door", # identifying that the validity check is for door objects
            function(object){ # initializing function
              test_number <- object@door %in% c(1,2,3) # testing whether the
              # number in the door slot of the door object is between 1 and 3
              test_single <- length(object@door)==1 # testing whether the
              # object in the door slot is of length one
              if(test_number==FALSE){ # throwing an informative error if
                # the number in the door slot is NOT 1, 2, or 3
                return("@door must be a value of 1, 2, or 3")
              }
              if(test_number==TRUE & test_single==FALSE){ # throwing an informative
                # error if the door slot has more than one numeric value
                return("@door must be a single value of 1, 2, or 3")
              }
            }
)

# initialization enables an object of class door to be created

setMethod("initialize",
          "door",
          function(.Object, ...) { # function which will take the object to initialize
            value = callNextMethod() # function which finds the first inherited method after
            # the current method
            validObject(value) # obtaining the method for the inputted object
            return(value) # returning the method
          }
)