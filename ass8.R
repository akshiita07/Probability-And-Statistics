#1.(a)
#1.(b)
#data.read.csv("C:/Users/patha/OneDrive/Desktop/thapar/sem5/probab/lab/Clt-data.csv")
data=read.csv(file.choose())
#data
head(data,10)
dim(data)

#1.(c)
population_mean=mean(data$Wall.Thickness)
cat("Population mean is: ",population_mean)
hist(data$Wall.Thickness)

#1.(d)
abline(v=population_mean,col="green")

#1.(a)
draw_sample_means = function(sample_size) {
  s=c()
  n=9000
  for(i in 1:n){
    s[i]=mean(sample(population_mean,sample_size,replace=TRUE))
  }
  # Plot the histogram of sample means
  hist(s,main = paste("Histogram of Sample Means (Sample Size =", sample_size, ")"),
       xlab = "Sample Mean",
       ylab = "Frequency")
  abline(v=mean(s),col="yellow")
}

# (a) sample size,number of samples
draw_sample_means(10)

#1.(b)
draw_sample_means(50)
draw_sample_means(500)
draw_sample_means(9000)

#2.
age=c(58,69,43,39,63,52,47,31,74,36)
cholesterol=c(189,235,193,177,154,191,213,165,198,181)
# Create a scatter plot
plot(age, cholesterol, 
     main = "Scatter Plot of Age vs Cholesterol Level",
     xlab = "Age",
     ylab = "Cholesterol Level",
     col = "blue")
#use lm to fit regression line
regressionLine=lm(cholesterol~age)
abline(regressionLine, col = "red", lwd = 2)
#age=60 pe predict:
predicted_cholesterol=predict(regressionLine, data.frame(age = 60))
cat("Estimated cholesterol level for a 60-year-old man:", predicted_cholesterol)

#3.
before=c(145,173,158,141,167,159,154,167,145,153)
after=c(155,167,156,149,168,162,158,169,157,161)
#null hypothesis: mean equal: u1=u2
#alternate hypothesis: mean not equal: u1!=u2 so further 2 parts: 1. One tail test and 2. Two tail test for greater & less
# Perform the paired t-test
#in ques: a high score on the test indicates a strong level of assertiveness..HIGH SCORE-> ALTERNATIVE-> SO GREATER (if equal then null hypothesis)
# u=0 given here as given that differences between the pre-course and post-course test scores are normally distributed
t_test_result=t.test(after, before, paired = TRUE, alternative = "greater")
t_test_result