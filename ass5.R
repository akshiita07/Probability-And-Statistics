#Ass5:

#Q1:
#a:
#limits from 0 to 60
a=0
b=60
P_more_than_45=1 - punif(45, min = a, max = b)
P_between_20_30=punif(30, min = a, max = b) - punif(20, min = a, max = b)
cat("Probability that waiting time is more than 45 minutes:", P_more_than_45, "\n")
#b:
cat("Probability that waiting time lies between 20 and 30 minutes:", P_between_20_30,"\n")

#Q2:
#exponential distribution..probab distrib fnc- lam*e^(-lam*x)
#continuous mai particular value mai 0 aana chahiye but R gives a value instead
#a:
lambda=1/2
density_at_x=dexp(3,rate=lambda)
cat("The value of the density function at x = 3 is:", density_at_x, "\n")

#b:
x=seq(0,5,by=0.08)
px=dexp(x,rate=lambda)
plot(x, px, type = "l", col = "blue", main = "Exponential Distribution (λ = 1/2)",ylab = "Density", xlab = "x", lwd = 2)

#c:
prob_at_most_3=pexp(3, rate = lambda)
cat("The probability that the repair time takes at most 3 hours is:", prob_at_most_3, "\n")

#d:
cp=pexp(x, rate = lambda)
plot(x, cp, type = "l", col = "red", main = "Cumulative Exponential Distribution (λ = 1/2)",ylab = "Cumulative Probability", xlab = "x", lwd = 2)

#e:
simulated_data=rexp(1000, rate = lambda)
hist(simulated_data, breaks = 30, col = "lightblue", main = "Histogram of Simulated Exponential Data",xlab = "Repair Time (hours)", ylab = "Frequency")


#Q3:gamma distribution
alpha=2   #shape parameter
beta=1/3  #scale parameter
new_rate=1/beta
#a:
#(i)
P_3_units=dgamma(3,shape=alpha,rate=new_rate)
cat("The probability that the lifetime is exactly 3 units of time is:", P_3_units, "\n")
#(ii)
P_atleast_1_unit=pgamma(1,shape=alpha,rate=new_rate)
cat("The probability that the lifetime is at least 1 unit of time is:", P_atleast_1_unit, "\n")
#b:
#for what value of c is given cnd satisfied-> use q gamma
c_value=qgamma(0.70, shape = alpha, rate = new_rate)
cat("The value of c such that P(X ≤ c) ≥ 0.70 is:", c_value, "\n")