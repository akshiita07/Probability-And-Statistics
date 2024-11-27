# Q1
n=100   
df= n - 1 
t_values=rt(n, df)
t_values
hist(t_values,breaks = 10) 

#Q2
n=100
chi_sq_df2 <- rchisq(n, df = 2)
chi_sq_df2
chi_sq_df10 <- rchisq(n, df = 10)
chi_sq_df10
chi_sq_df25 <- rchisq(n, df = 25)
chi_sq_df25

# Histogram for df = 2
hist(chi_sq_df2, 
     main = "Chi-Square Distribution (n = 100, df = 2)", 
     xlab = "Values", 
     col="pink",
     breaks = 10)

# Histogram for df = 10
hist(chi_sq_df10, 
     main = "Chi-Square Distribution (n = 100, df = 10)", 
     xlab = "Values", 
     col = "lightblue", 
     breaks = 10)

# Histogram for df = 25
hist(chi_sq_df25, 
     main = "Chi-Square Distribution (n = 100, df = 25)", 
     xlab = "Values", 
     col = "lightcoral", 
     breaks = 10)

#q3
x=seq(-6, 6, length.out = 100)
density_df1=dt(x, df = 1)
density_df4=dt(x, df = 4)
density_df10=dt(x, df = 10)
density_df30=dt(x, df = 30)
plot(x, density_df30, type = "l", lwd = 2, col = "blue", 
     main = "Student's t-distribution densities", xlab = "x", ylab = "Density")

# Add lines for other dfs
lines(x, density_df1, col = "red", lwd = 2)
lines(x, density_df4, col = "green", lwd = 2)
lines(x, density_df10, col = "purple", lwd = 2)

# Add a legend
legend("topright", legend = c("df=1", "df=4", "df=10", "df=30"), 
       col = c("red", "green", "purple", "blue"),lwd=2,cex=0.5)

#q4
#for f dist , x ,y should be 2 independent random variable that follow chi sq dist
#df will be available so we find ratio -fdist
#prob from percentile ie 0.95
p=0.95
#usinf qunatile function for f dist
res=qf(p,10,20)
res

#q4(ii)
#pf(1.5,10,20) give values less then equal to 1.5
area_0to1.5=pf(1.5,10,20)
area_0to1.5
area1.5_toinf=1-pf(1.5,10,20)
#or use lower.tail=false
area1.5_toinf

#(iii)
#similar to first  part
#probs are given
quant0.25=qf(0.25,10,20)
quant0.25
quant0.75=qf(0.75,10,20)
quant0.75
quant0.999=qf(0.999,10,20)
quant0.999

#iv
randomvals=rf(1000,10,20)
hist(randomvals,breaks=10,col="blue",xlab="f-values")
