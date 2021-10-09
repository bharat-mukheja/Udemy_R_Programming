# vector in R - has either integers or doubles
# comparable to array or list in other languages

#Vectors have a sequence, i.e. a beginning, an end, and index numbers starting at 1

#vector can be numeric or character, numeric has either integers or doubles
# character vector has characters, if you put a number into character vector, R changes it to character

vector <- c(45,5)
is.integer(vector)
is.numeric(vector)
is.double(vector)

vector2 <- c(3L,12L)
is.numeric(vector2)
is.integer(vector2)
is.double(vector2)

seq(1,15) #sequence - start,end
1:15 #above and this are same
seq(1,15,2)# steps of 2

rep(3,50) #replicate
d<-rep(3,50)
rep("a",5)
x<-c(80,20)
y<-rep(x,5)
y
