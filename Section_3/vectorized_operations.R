#How to add two vectors element by element?
#Ans - Simply add the two vectors. R does every operation in a vectorized way. Same for all arithmetic operations

#Q- What if the vector sizes are different?
#Ans - Recycling of vectors, R will copy paste the shorter vector until the lengths are equal, and there's a warning if the larger vector size is not a multiple of smaller vector

#Even with functions, it is possible to use vectors as arguments, and return vectors as well

x <- rnorm(5)
x

#Q - How to print each element on its own
#R-specific programming loop
for(i in x){
  print(i)
}
#or just 1 value
print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#conventional programming loop
for(j in 1:5){
  print(x[j])
}



N <- 100
a <- rnorm(N)
b <- rnorm(N)

#Vectorized approach
c<-a*b
c
#De-vectorized approach
d <- rep(NA,N)
for(i in 1:N){
  d[i]<-a[i]*b[i]
}
d

#Vectorized operations are much faster than non-vectorized