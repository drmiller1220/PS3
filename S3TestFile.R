setwd("C:\\Users\\drmiller1220\\Documents\\GitHub\\PS3")

source('DoorS3.R')
source('PlayGameS3.R')
source('PlayGameDefaultS3.R')
source('PlayGameDoorS3.R')

# creating objects for each possible door
door1 <- door(1)
door2 <- door(2)
door3 <- door(3)

# failing to create door objects for inputs which are not single integers
doorz <- door("z")
door_vector <- door(c(1,2,4,4))

# play let's make a deal with door objects

PlayGame(door1)
PlayGame(door2)
PlayGame(door3)

# failing to play let's make a deal with non-door objects

PlayGame("z")
PlayGame(c(1,25,32,535))
PlayGame(matrix(1:9,3))
