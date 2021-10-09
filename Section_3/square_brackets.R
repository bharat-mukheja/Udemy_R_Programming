
# 3 ways to create vectors
x <- c(1,123,534,13,4) #combine
y <- seq(201,250,11)   #sequence
z <- rep("Hi",3)       #replicate

# How to access these values in vectors
w <- c("a","b","c","d","e")
w

#Use the square bracket, 1-indexed
w[1]
w[2]
w[3]
w[-1]   #all values except first
v <- w[-3] #get back a vector
v       # all values except third
w[1:3]  # first through third
w[3:5]  # third through fifth
w[c(1,3,5)] #first, third, fifth
w[c(-2,-4)] #all except 2nd and 4th
-3:-5   # vector
w[-3:-5]
