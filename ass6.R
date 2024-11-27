#1.
#in pracma library use double integrate function integral2(f,_x min limit_,_x max limit_,_y min limit_,_y max limit,_)
#in console type: install.packages("pracma")
#in console type to load: library("pracma")
#define function:
fnc1=function(x,y){
  (2*(2*x+3*y))/5
}

#(i)
ans1=integral2(fnc1,xmin=0,xmax=1,ymin=0,ymax=1)
ans1$Q
#ans: 1

#(ii)  marginal distribution g(x) at x = 1
fnc2=function(y){
  fnc1(1,y)
}
gx=integral(fnc2,0,1)
print(gx)

#(iii)  marginal distribution h(y) at y = 0
fnc3=function(x){
  fnc1(x,0)
}
hy=integral(fnc3,0,1)
print(hy)

#(iv) expected value of g(x, y) = xy      0.333
fnc4=function(x,y){
  x*y*fnc1(x,y)
}
ans=integral2(fnc4,0,1,0,1)
print(ans)

#2.	
#define function:
function1=function(x,y){
  (x+y)/30
}
#x=[0,1,2,3]
x=c(0:3)
#y=[0,1,2]
y=c(0:2)

#(i)
M=matrix(c(function1(0,y),function1(1,y),function1(2,y),function1(3,y)),nrow=4,ncol=3,byrow=T)
M

#(ii)
sum(M)
if(sum(M)==1){
  print("Yes it is joint mass function")
}else{
  print("Not a joint mass function")
}

#(iii) marginal distribution g(x) for x = 0, 1, 2, 3
gx=apply(M,1,sum)
gx

#(iv) marginal distribution h(y) for y = 0, 1, 2
hy=apply(M,2,sum)
hy

#(v)  conditional probability at x = 0 given y = 1
cp=M[1,2]/hy[2]
cp

#(vi) E(x), E(y), E(xy), Var(x), Var(y), Cov(x, y) and its correlation coefficient
e_x1=sum(x*gx)
e_x1

e_x2=sum(x*x*gx)

var_x=e_x2-(e_x1*e_x1)
var_x

e_y1=sum(y*hy)
e_y1

e_y2=sum(y*y*hy)

var_y=e_y2-(e_y1*e_y1)
var_y

e_xy=0
for (i in 1:length(x)) {
  for (j in 1:length(y)) {
    e_xy=e_xy + x[i] * y[j] * M[i, j]
  }
}
e_xy

cov_xy= e_xy-e_x1*e_y1
cov_xy
  
corr_coef= cov_xy/(sqrt(var_x*var_y))
corr_coef