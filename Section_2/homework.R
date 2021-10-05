"Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev = 1:
Create an R script that will count how many of these numbers fall between -1 and 1 and divide by the total quantity of N
You know that E(X) = 68.2%
Check that Mean(XN) -> E(X) as you rerun your script while increasing N"
runs <- 10000
counter <- 0
for(x in rnorm(runs)){
  if (x>-1 & x<1){
    counter <- counter+1
  }
}
print(counter/runs) #Should be 0.682
