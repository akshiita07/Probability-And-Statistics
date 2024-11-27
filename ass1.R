#to create vector
vector=c(1,2,3,4)
#to print vector
print(vector)
#to show all variable names
ls()
#to remove a variable
rm(vector)

#ctrl+l to clear console window

#firstQ: max & min value of vector
vector=c(5,10,15,20,25,30)
print(max(vector))
print(min(vector))

#secQ:
#find factorial of no
print(factorial(4))
#code:
num=as.integer(readline(prompt = "Enter your number: "))
fact=1
if(num<0){
  print(paste("Factorial of ",num," is: NOT DEFINED"))
  #do not add space between { and else otherwise error
}else if(num==0){
  #use paste when adding variables inside print
  print(paste("Factorial of ",num," is: 0"))
}else
{
    for(i in 1:num){
      fact=fact*i
    }
    print(paste("Factorial of ",num," is: ",fact))
}

#thirdQ: fibonacci series
n=as.integer(readline(prompt = "Enter your number: "))
fno=0
sno=1
if(n<=0){
  print("Cannot print fibonacci series.")
}else{
  for(i in 1:n){
    if(i==1){
      print(fno)
    }else if(i==2){
      print(sno)
    }else{
      nextTerm=fno+sno
      print(nextTerm)
      fno=sno
      sno=nextTerm
    }
  }
}

#4Q:CALCULATOR
a=as.integer(readline(prompt = "Enter first number: "))
b=as.integer(readline(prompt = "Enter second number: "))
op=as.character(readline(prompt = "Enter operation: "))
result=switch(op,
              "+"=cat("sum is =" , a+b),
              "-"=cat("diff is =" , a-b),
              "*"=cat("product is =" , a*b),
              "/"=cat("quotient is =" , a/b),
)

#graph
vec1=c(1,2,3,4)
vec2=c(32,21,11,5)
#scatter 
plot(vec1,vec2,main="Scatter Plot",xlab="X",ylab="Y",col="black")

#Line Plot
plot(vec1,vec2,type="l",main="Line Plot",xlab="X",ylab="Y",col="pink")

#bar graph
barplot(vec1,vec2,type="l",main="BAR Graph",xlab="X",ylab="Y",col="blue")

#box graph
boxplot(vec1,vec2,type="l",main="BOX Graph",xlab="X",ylab="Y",col="red")

#pie graph
pie(vec1,vec2,type="l",main="PIE Chart",xlab="X",ylab="Y")

#histogram
hist(vec1,type="l",main="HISTOGRAM",xlab="X",ylab="Y",col="yellow")

