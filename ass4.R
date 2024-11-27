#Q1: Mean = Expected value = sum of power* number
p=c(0.41,0.37,0.16,0.05,0.01)
x=c(0,1,2,3,4)
#method 1: using sum
ans1=sum(x*p)
ans1
#method 2: using sum
ans2=weighted.mean(x,p)
ans2
#method 3: using dot plot
ans3=c(x%*%p)
ans3

#Q2:
f=function(t){
  (0.1*exp(-0.1*t))*t
}
ans=integrate(f,0,Inf)
ans$value

#Q3:
x=c(0,1,2,3)
p=c(0.1,0.2,0.2,0.5)
rev=function(x){
  ans=(x*12-6*3+2*(3-x))
  return (ans)
}
#sapply():apply a function to each element of a vector
y=sapply(x,rev)
ans=sum(y*p)
ans


#Q4:
# Define the given fnc as a function in R
fnc= function(x) {
  x*0.5*exp(-abs(x))
}

# Calculate the first moment (Mean)
mean_X = integrate(fnc, lower = 1, upper = 10)
print(mean_X$value)

# Calculate the second moment
fnc2= function(x) {
  x^2*0.5*exp(-abs(x))
}
second_moment = integrate(fnc2, lower = 1, upper = 10)
print(second_moment$value)

# Calculate the variance
variance_X = second_moment$value - (mean_X$value)^2
print(variance_X)

#Q5:
# Step 1: Define the PDF of X
fnc= function(x) {
  (3/4) * (1/4)^(x-1)
}

# Step 3: Find the probability distribution for Y when X = 3
prob_Y_given_X3 =fnc(3)
print(prob_Y_given_X3)

x=c(1,2,3,4,5)
y=sapply(x,fnc)
expected_Y=sum(x*y)
print(expected_Y)

second_moment_Y=sum(x^2*y)
print(second_moment_Y)

variance_Y=second_moment_Y-(expected_Y)^2
print(variance_Y)

#lab eval-> mst ke pehle wala week--> 12 mrks