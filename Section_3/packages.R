



install.packages('ggplot2')

?qplot()
?ggplot()
?diamonds  #sample diamonds dataset

library(ggplot2)
?ggplot
?qplot

#Test package
qplot(data = diamonds,carat,price,#carat is x and price is y
      colour=clarity, facets=.~clarity)# . signifies proportioned clarity