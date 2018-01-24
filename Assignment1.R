######assignment1#####

x<-scan("")
2
0
9
7
1
5
2
2
3
3
2
2
2
3
2
8
0
1
3
4
6
x
length(x)
sum(x)
mean(x)
?scan()
scan("read_this_1.txt")
scan("read_this_1.csv",what="integer")

####### Basic R Exercise 1 ######

#(1) Create the vectors
#1a (1, 2, 3, . . . , 19, 20)
v1a<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
v1a
v1a<-seq(1,20)
v1a
#1b (20, 19, . . . , 2,1)
v1b<-seq(from=20, to=1)
v1b
#1c (1, 2, 3, . . . , 19, 20, 19, 18, . . . , 2, 1)
v1c_half<-19:1
v1c_half
v1c<-c(v1a,v1c_half)
v1c
v1c<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1)
v1c
v1c<-c(y,seq(19,1,by=-1))
v1c
#1d  (4, 6, 3) and assign it to the name tmp
temp<-c(4,6,3)
temp
#1e  (4, 6, 3, 4, 6, 3, . . . , 4, 6, 3) where there are 10 occurrences of 4
v1e<-rep(temp,times=10)
v1e
?rep
#1f (4, 6, 3, 4, 6, 3, . . . , 4, 6, 3, 4) where there are 11 occurrences of 4, 10 occurrences of 6 and 10 occurrences of 3.
v1f<-rep(temp,times=11,length.out=31)
v1f
#1g (4, 4, . . . , 4, 6, 6, . . . , 6, 3, 3, . . . , 3) where there are 10 occurrences of 4, 20 occurrences of 6 and 30 occurrences of 3.
v1g<-rep(temp,times=c(10,20,30))
v1g
test<-rep(temp,times=c(10,1,1))
test

#(2) Create a vector of the values of e^x *cos(x) at x = 3, 3.1, 3.2, . . . , 6
x2<-seq(3,6,by=0.1)
x2
v2<-exp(x)*cos(x)
v2

#(3)Create the following vectors:
#3a (0.1^3*0.2^1,.....0.1^36*0.2^34)
x3a<-seq(3,36,3)
x3a
y3a<-seq(1,34,3)
y3a
v3a<-0.1^(x3a)*0.2^(y3a)
v3a
#3b (2,2^2/2,2^3/3....2^25/25)
x3b<-1:25
x3b
v3b<-(2^(x3b)/x3b)
v3b

#(4)Calculate the following
#4a summation of (i^3+4i^2) where i=10 to 100
x4a<-10:100
x4a
sum(x4a^3+4*x4a^2)
#4b summation of (2^i/i+3^i/i^2) where i=1 to 25
x4b<-1:25
x4b
sum((2^(x4b)/(x4b))+(3^(x4b)/(x4b)^2))

#(5) Use the function paste to create the following character vectors of length 30
#5a ("label 1", "label 2", ....., "label 30")
?paste
v5a <- paste("label", 1:30, sep = " ")
v5a
#5b ("fn1", "fn2", ..., "fn30")
v5b <- paste("fn", 1:30, sep = "")
v5b

#(6) Execute the following lines which create two vectors of random integers which are chosen with replacement from the integers 0, 1, . . . , 999. Both vectors have length 250.
set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
?sample
xVec
yVec

# Suppose x = (x1, x2, . . . , xn) denotes the vector xVec and y = (y1, y2, . . . , yn) denotes the vector yVec
#6a Create the vector (y2 − x1, . . . , yn − xn−1)
v6a<- yVec[2:250]-xVec[1:249]
v6a<- yVec[c(2:250)]-xVec[c(1:249)]
v6a
#6b Create the vector (siny1/cosx2,siny2/cosx3,....sinyn-1/cosxn)
v6b<-sin(yVec[1:249])/cos(xVec[2:250])
v6b
#6c Create the vector (x1 + 2x2 − x3, x2 + 2x3 − x4, . . . , xn−2 + 2xn−1 − xn)
v6c<- xVec[1:248]+2*xVec[2:249]-xVec[3:250]
v6c
#6d Caculate summation of exp(-xi)/xi where i=1 to n
v6d<-sum(exp(-xVec[2:250])/(xVec[1:249]+10))
v6d

#(7) This question uses the vectors xVec and yVec created in the previous question and the functions sort, order, mean, sqrt, sum and abs
#7a Pick out the values in yVec which are > 600
?sort
v7a<- yVec>600
v7a
v7a<- yVec[yVec>600]
v7a
#7b What are the index positions in yVec of the values which are > 600?
v7b<-which(yVec >600)
v7b
#7c What are the values in xVec which correspond to the values in yVec which are > 600? (By correspond, we mean at the same index positions.)
v7c<-xVec[v7b]
v7c
#7d Create the vector (|x1 − x¯|^1/2, |x2 − x¯|^1/2, . . . , |xn − x¯|^1/2) where x¯ denotes the mean of the vector x = (x1, x2, . . . , xn)
Xmean<-mean(xVec)
Xmean
v7d<-abs(xVec-Xmean)^0.5
v7d
#7e How many values in yVec are within 200 of the maximum value of the terms in yVec?
max(yVec)
sum( yVec>max(yVec)-200 )
#7f How many numbers in xVec are divisible by 2? (Note that the modulo operator is denoted %%.)
length(xVec[xVec %% 2 == 0])
length(subset(xVec, xVec %% 2 == 0))
sum(xVec%%2==0)
#7g Sort the numbers in the vector xVec in the order of increasing values in yVec.
increasingY_values<-sort(yVec, decreasing=FALSE)
increasingY_values
increasingY_index<-order(yVec)
increasingY_index
xVec[increasingY_index]
#7h Pick out the elements in yVec at index positions 1, 4, 7, 10, 13, . . . .
v7hOrder<-c(T,F,F)
v7hOrder
yVec[v7hOrder]

#(8) By using the function cumprod or otherwise, calculate 1+(2/3)+(2/3*4/5)+(2/3*4/5*6/7)+...+(2/3*4/5*...*38/39)
?cumprod
v8<-seq(2,38,b=2)/seq(3,39,b=2)
cumprod(v8)
1+sum(cumprod(v8))

