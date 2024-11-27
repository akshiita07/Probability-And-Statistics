#Q1:
#n: no of times rolled
#p:success
#q:failure
#formula: nCr p^ q^
#7<=x<=9
#in built fnc: pbinom
n=12
x=pbinom(9,n,1/6)
y=pbinom(6,n,1/6)
res=x-y
print(res)
#P(x>=9)-P(x>=6)

#or write: 


#Q2:
#use in built fnc: pnorm
#84 or more
#lower.tail: that will give probab greater or equal to 84
#also max marks are 100 so need to be subtracted
pnorm(100,mean=72,sd=15.2)-pnorm(84,mean=72,sd=15.2,lower.tail = FALSE)


#Q3; Poision formula: ((e^-lambda) * (lambda^k))/k!
#k: no of occurence /kitne times
#lambda:given
#in built fns- ppois
#part 1:
ppois(0,lambda=5)
#part 2: P(48<= x <=50)
diff(ppois(c(47,50),lambda = 50))

#Q4: hyperbolic distribution formula:
#m:defective-> favourable outcomes
#n:NON defective: 250-17=233-> NONfavourable outcome --> opposite of m --> jo hume nahi chahiye
#k:randomly selected
dhyper(3,m=17,n=233,k=5)

#Q5: discrete probab
#VIVA QUES- WHERE TO USE DBINOM OR PBINOM??
# probability mass function: dbinom-> d(k,n,p): gives probability density/mass fnc
# cumulative distribution function: pbinom-> p(k,n,p): gives probability 
n=31
x=0:31  #range from 0 to 31
y=dbinom(x,n,0.447)

plot(x,y,type="h",col="blue")  #h for histogram type OR l for line type
z=cumsum(y)# cumulative distribution function calculate krega
plot(x,z,col="green")
#x=pbinom(9,n,1/6)

#use weighted.mean function to calculate mean:
m=weighted.mean(x,y)
m
var=weighted.mean((x-m)^2,y)
var
sd=sqrt(var)
sd