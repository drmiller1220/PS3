setwd("C:\\Users\\drmiller1220\\Documents\\GitHub\\PS3")

source('DoorS4.R')
source('PlayGameS4.R')

# creating objects for each possible door
door1 <- new("door", door=1)
door2 <- new("door", door=2)
door3 <- new("door", door=3)

# failing to create door objects for inputs which are not single integers
doorz <- new("door", door="z")
door_vector <- new("door", door=c(3,65,1,23))

# play let's make a deal with door objects

PlayGame(door1)
PlayGame(door2)
PlayGame(door3)

# failing to play let's make a deal with non-door objects

PlayGame("z")
PlayGame(c(1,25,32,535))
PlayGame(matrix(1:9,3))
