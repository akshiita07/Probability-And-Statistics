#Q1: a part
#rep is repeat
v1=c(rep("Gold",20),rep("Silver",30),rep("Bronze",50))
#replace=T: everytime taking 100-->replace bhi karna hai nikal ke
#replace=F:first ke liye 100 choices then next ke liye 99 then so on 98--> jo nikala use replace nahi krna hai
#10 entries ka sample hai
#here replace=T or F
sample(v1,10,replace=T)#everytime from 100 samples

#Q1: b part
#success-0.9 so failure=0.1 as probability is given
v2=c("Success","Failure")
#here replace=T--> as only 2 so if one is removed then always we get the other
sample(v2,10,replace=T,prob=c(0.9,0.1))


#Q3:P(A/B)=P(A~B)/P(B)=P(C/R)P(R)/P(C)
#these r names of variables
cd=function(PCR,PR,PC){
  PRC=(PCR*PR)/PC
  return (PRC)
}
result=cd(0.85,0.2,0.4)
print(result)

#Q4. dataset ko call krwana hai console mein
dataset=iris
# head command
head(dataset)
# to get first 3 rows
head(dataset,3)
#to get last 3 rows
tail(dataset,3)
#str
str(dataset)
#range
#$ is used for kis column
range(dataset$Sepal.Length)
# mean
mean(dataset$Sepal.Length)
# median
median(dataset$Sepal.Length)
#first quartile
first_quartile_sepal_length <- quantile(dataset$Sepal.Length, 0.25)
cat("First Quartile (Sepal.Length):", first_quartile_sepal_length, "\n")

#third quartile
third_quartile_sepal_length <- quantile(dataset$Sepal.Length, 0.75)
cat("Third Quartile (Sepal.Length):", third_quartile_sepal_length, "\n")

#interquatile range
interquartile_range_sepal_length <- IQR(dataset$Sepal.Length)
cat("Interquartile Range (Sepal.Length):", interquartile_range_sepal_length, "\n")

#standard deviation
sd_sepal_length <- sd(dataset$Sepal.Length)
cat("Standard Deviation (Sepal.Length):", sd_sepal_length, "\n")

# Print the results
var_sepal_length <- var(dataset$Sepal.Length)
cat("Variance (Sepal.Length):", var_sepal_length, "\n")

#i:summary
summary(dataset)

#Q2:birthday paradox problem->1din pe 2log k bday
#pbirthday computes the probability of a coincidence
#qbirthday computes the smallest number of observations needed to
#have at least a specified probability of coincidence.-->quantity
#a.
#for various n
noSimulation=1000
noPeopleInRoom=20
#noPeopleInRoom=23->0.5 ans
s=0 #counter that checks kitna logo ka bday on same day
for(val in 1:noSimulation){
  #replace=T same entry
  ans=as.integer(any(duplicated(sample(365,50,replace = T)))) #it gives result in T/F so use as.integer to get 0/1 value
  #if same entry found->any     agar sari then use->all
  s=s+ans
}
prob=s/noSimulation
print(prob)

#b. smallest value of n
n=20 #no of people in room
pbirthday(n,365,2) #2 no of ppl coincident ie fall in same category
qbirthday(0.5,365,2) #ie 23 se agar ek bhi zyada person aaya then probab 0.5 se badh jaygi

#Q5: find mode of vector
vec=c(2,1,2,3,1,2,3,4,1,5,5,3,2) #mode=2
#some commands:
#uni=unique(vec)->removes duplicates & give unique entries
# match(vec,uni)--> maps vector with unique entries-->gives vector ka element unique array mai kis position pe lie krta hai
# tabulate(match(vec,uni)) ie 2-4times 1->3times
#find max using which.max()
#which.max(tabulate(match(vec,uni)))
#uni[index] ie uni[which.max(tabulate(match(vec,uni)))]
m=function(vec){
  uni=unique(vec)
  uni[which.max(tabulate(match(vec,uni)))]
}
answer=m(vec)
print(answer)