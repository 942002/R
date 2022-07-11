# R for Beginners
# Basic operations with a data sets
datasets::mtcars
mtcars
head(mtcars)
tail(mtcars)
summary(mtcars)
class(mtcars)
dim(mtcars)
plot(mtcars)
View(mtcars)
names(mtcars)
attributes(mtcars)
str(mtcars)
mtcars$mpg
mtcars$cyl
nchar(mtcars$cyl)

# To construct a Table
table(mtcars$mpg)
table(mtcars$mpg,mtcars$cyl) 

# Arithmetic operations
a=12345
b=89763
a+b
a=390400
b=93789
a-b
a=345
b=789
a*b
a=89076423
b=78935672
a/b
10==3
!(10==3)
#Remainder
18978%%2
2345656%%3
1000^7
10^3
100>9
100<9
100==9
1000<=9
1000>=9
!(1000==9)

#Print Formatting
y=900
print(y)
print(paste("rajkumar","pillay"))
print(paste0("rajkumar","pillay"))
print(paste("ashely","is","good"))
print(paste0("ashely","is","good"))

#Data Types
#1. Vectors(similar data type)
mtcars
class(mtcars$mpg)
# change the class of variable
class(mtcars$mpg)="character"
class(mtcars$mpg)
attributes(mtcars)
#Examples
f=c(1,2,3,4,5,6)
g=c("Person","Name","Place","Address")

# 2.List(Different Data types)
Product=c("P&G","Nestle","Mars","Cadbury")
Category=c("FMCG","Food","Chocolates","Dairy Milk")
Rating=c(5,4,4,1)
var1=list(Product,Category,Rating)
var1
# To know whether we created a list or not
is.list(var1)
str(var1)

#3.Matrix
var2=matrix(1:16,nrow=4,ncol=4,byrow=TRUE)
var2
rbind(var2,16:20)
cbind(var2,4:5)
rbind.data.frame(var2)
cbind.data.frame(var2)
names(nrow)
names(ncol)
rownames_new=c("row1","row2","row3")
colnames_new=c("Col1","Col2","Col3")
var3=matrix(1:9,nrow ==3,ncol = 3,byrow = TRUE )
var3

#4.Data frames (same data type)
Product=c("P&G","Nestle","Mars","Cadbury")
Category=c("FMCG","Food","Chocolates","Dairy Milk")
Rating=c(5,4,4,1)
data.frame(Product,Category,Rating)

#Sort
mtcars
sort(mtcars$mpg)
#Ranking
order(mtcars$mpg,decreasing = TRUE)

#Sequencing
odd_value=c(1:20,2)
odd_value
odd_value1=seq(1,20,2)
odd_value1
even_value=c(2:40,3)
even_value
even_value1=seq(2,40,2)
even_value1

#Statistical Functions
var(mtcars)
sd(mtcars$cyl)
sd(mtcars$disp)
sd(mtcars$hp)
max(mtcars$mpg)
max(mtcars$disp)
min(mtcars$mpg)
min(mtcars$cyl)
min(mtcars$hp)
mtcars["cyl"]
chisq.test(mtcars$mpg,mtcars$cyl)
typeof(mtcars)
mean(mtcars$mpg)
median(mtcars$cyl)
mean(mtcars$disp)
mean(mtcars$hp)
mean(mtcars$drat)
summary(mtcars$mpg)
sd(mtcars$mpg)
library(moments)
skewness(mtcars$mpg,na.rm=FALSE)
kurtosis(mtcars$mpg,na.rm = FALSE)

#Handling Missing Values
Var5=c(0,67,47,NA,45)
Var5
Var5+11
na.omit(Var5)
apply(mtcars,1,mean,na.rm= TRUE)

#Conversions
#Convert Vector to list
v6=c(1,2,3,4,5,6,7)
v6
v7=as.list(v6)
v7
class(v6)
class(v7)
#Convert list to Vector
v8=unlist(v7)
v8
class(v8)
#Convert Vectors to Matrix
v9=c(2,3,4,5,6,7)
v10=c(7,8,9,1,4,3)
v11=matrix(v9:v10,nrow = 2,ncol = 2,byrow = TRUE)
v11
class(v11)

#If Statements
x=899
if(is.integer(x)){
  print("x is an integer")
  } else
{
  print("x is not an integer")
}

y=450L
if(is.integer(y)){
  print("y is an integer")
  } else
{
  print("y is not an integer")
}
  
#While Loop
z=c(1,2,3)
counter=1
while (counter<5) {
  print(z)
  counter=counter+1
  }

a=c(34,35,46)
count=10
while (count<12) {
  print(a)
  count=count+1
  }
  
#For Loops
b=letters[1:7]
for (i in b) {
  print(b)
}

#Repeat loops
c=c(1,2,3,4,5)
count=3
repeat{
  print(c)
  count=count+1
  if(count>10){
    break
  }
}

d=LETTERS[1:5]
count=3
repeat{
  print(d)
  count=count+1
  
  if(count<10){
    break
  }
}

# Some important Functions
mtcars
mtcars[20:30,]
var1 = c(mtcars$mpg,mtcars$hp,mtcars$gear)
var1
mtcars[20:30,c("mpg","cyl","gear")]
sequence(10:60)
seq1= seq
mtcars
var14=mtcars
mtcars
var12=mtcars[,"mpg">25]
var12
plot(mtcars$cyl,mtcars$mpg)

telco
dim(telco)
names(telco)
class(telco)
table(telco$ed)
table(telco$region)
table(data.frame(telco$ed))
data.frame(table(telco$ed))
data.frame(table(telco$age))
ages=cut(telco$age,breaks =c(20,40,50,60,70))
ages 
ades11=factor(telco$age,levels = c(35,45,55,65,75))
ades11
ages12=data.frame(table(ages))          
ages12

telco 
table(telco$churn)
data.frame(table(telco$churn))
prop.table(table(telco$churn))
round(prop.table(table(telco$churn),2))
round(prop.table(table(telco$churn)),1)
prop.table(table(telco$churn),1)
prop.table(table(telco$churn),2)
#cross Tabulations & chi square
table(telco$churn,telco$ed)
prop.table(table(telco$churn,telco$ed),1)
round(prop.table(table(telco$churn,telco$ed),0))
prop.table(table(telco$churn,telco$ed),2)
prop.table(table(telco$churn,ages),1)
prop.table(table(ages,telco$churn),1)
prop.table(table(ages,telco$churn),2)
round(prop.table(table(ages,telco$churn),2),0)
#Chi Square Test
#To generalize the relations of the sample to the populations
# Chi SSquare Test for Independence of Attributes
# H0 : There is no relationship between age of the customer and churn
# H1: There is a relationship between age of the customer and churn( Samples results can be attributed to population)
chisq.test(table(ages,telco$churn))
#p value> 0.05, Reject H0
# It can be concluded that in the population also younger people in comparision to other age group people
#there is a relationship between age of the customer and churn
# Prepare a 3D time age group,churn
table(ages,telco$ed,telco$churn)
table(ages,telco$churn,telco$ed)
data.frame(table(telco$age,ages,telco$churn))
data.frame(table(ages,telco$churn,telco$ed))

#change of Origin & Change of Scale
rand3=rand-60
rand3
# change of Scale
# For a set of Numbers,if they are multiplied or divided by a constant,then it is referredd as change of scale
# change of Scale & change of Origin for a set of numbers
#1.For a constant number if the set is added or subtracted for 
# for the resultant numbers if they are 
# the process is referred to as change of origin and scale
#1.From the telco file,select 500 customers age randomly,and subtract mean from each of the number and divide it with standard deviation
telco
sampl= sample(telco$age,500)
sampl
sampl1=(sampl-mean(sampl))/sd(sampl)
sampl1
round(sampl1,0)
scale(sampl1)
round(scale(sampl1))
#Normalizing(To bring variables at same levels)
#Change of origin and scale is referred as Normalizing
sampl2=(sampl-min(sampl))/max(sampl)-min(sampl)
sampl2
round(sampl2,0)


#Generating Random Numbers
rand2=round(rnorm(100,30,70),0)
rand2
max(rand2)
min(rand2)
quart=quantile(rand2,c(.25,.50,.75))
quart
deci=quantile(rand2,seq(.10,.9,.10))
deci

#Data Visualization
# Data Visualization
#box plot
boxplot(telco$age,col = "Blue")
boxplot(age~churn,col = c("Red","Black"))
boxplot(telco$age~churn,col = c("Red","Black"),xlab = "age",ylab="churn",title("Age Vs Churn"))
boxplot(telco$age~churn,col = c("Red","Black"),xlab = "age",ylab="churn",title( " Age Vs Churn"))
boxplot(telco$age~churn,col = c("Red","Black"),xlab = "age",ylab="churn",title("Age Vs Churn"),notch= TRUE)

datasets::ChickWeight
plot(ChickWeight)
#Base Graphics
library(MASS)
plot(ChickWeight$Time,ChickWeight$Diet)
title("Chickweight in relaton with Time and Diet")

#ggplots for Data visualization
# ggplots is a package for creating graphs in R
# ggplots uses geoms or geometric objects to form basis for different types of graphs
# geom_bar for bar plots
#geom_line for Line graphs
#geom_points for Scatter Plots
#geom_boxplot for Boxplots
#geom_jitter for small data

#ggplot2
library(ggplot2)
library(tidyverse)
datasets::mtcars
ggplot(mpg)+ geom_bar(aes(x=class))
ggplot(mpg)+ geom_bar(aes(x=class),fill= "blue")
ggplot(mtcars,aes(wt,mpg))+ geom_line(arrow= arrow())
ggplot(mtcars,aes(wt,mpg))+ geom_line(linetype= 1)
ggplot(mtcars,aes(wt,mpg))+ geom_point(aes(size= qsec))
ggplot(mtcars,aes(wt,mpg))+ geom_boxplot(fill="blue")
ggplot(mtcars,aes(wt,mpg))+ geom_jitter()

#Histogram
mtcars
hist(mtcars$hp)
hist(mtcars$drat,xlab = "Drat",col = "blue")

library(ggplot2)
library(tidyverse)
# Pie Chart
#Simple pie chart
slices=c(283, 112,83, 50, 26) # Deaths due COVID 19 as on 23rd April-2020
lbls=c("Maharashtra=283", "Gujarat=112", "MP=83", "Delhi=50", "Telangana=26")
pie(slices, labels = lbls, main="Pie Chart of deaths due to Covid till 23rd April ")

slices=c(283, 112,83, 50, 26) # Deaths due COVID 19 as on 23rd April-2020
lbls=c("Maharashtra", "Gujarat", "MP", "Delhi", "Telangana")
pct=round(slices/sum(slices)*100)
lbls=paste(lbls, pct) # add percents to labels
lbls=paste(lbls,"%",sep="") # ad % to labels
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Deaths due to COVID 19 as on 23rd April")

# 3D piechart
library(plotrix)
slices=c(283, 112,83, 50, 26)
lbls=c("Maharashtra=283", "Gujarat=112", "MP=83", "Delhi=50", "Telangana=26")
pie3D(slices,labels=lbls,explode=0.1,
      main="Deaths due to COVID 19 as on 23rd April ")

lbls=c("Maharashtra=283", "Gujarat=112", "MP=83", "Delhi=50", "Telangana=26")
pie3D(slices,labels=lbls,explode=0,
      main="Deaths due to COVID 19 as on 23rd April ")

datasets::iris
iris
mytable=table(iris$Species)
lbls=paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls,
    main="Pie Chart of Species\n (with sample sizes)")

#BAR Plot
mtcars
counts=table(mtcars$gear)
barplot(counts, main="Car Distribution",
        xlab="Number of Gears",col = "Blue")

# Simple Horizontal Bar Plot with Added Labels
counts=table(mtcars$gear)
barplot(counts, main="Car Distribution", horiz=TRUE,
        names.arg=c("3 Gears", "4 Gears", "5 Gears"),col = "Black")        

# Stacked Bar Plot with Colors and Legend
counts=table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts))

# Grouped Bar Plot
counts=table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts), beside=TRUE)

# Boxplot of drat by Car Cylinders
boxplot(drat~cyl,data=mtcars, main="Car Milage Data")

# Multiple Boxplots
boxplot(mtcars[,4:9],title= "Multiple Boxplots")

# Plotly
? plot_ly
nwplot= plot_ly(data = mtcars,x=mtcars~hp,y= mtcars~wt,type = "bar")
nwplot
nwplot1= plot_ly(data = mtcars,x=mtcars~hp,y= mtcars~wt,type = "scatter")
nwplot1

#filtering into two data sets
ds3=filter(mtcars,cyl=="4")
ds3
ds1=filter(mtcars,vs=="1")
ds2=filter(mtcars,vs=="0")
t.test(ds1$drat,ds2$drat)