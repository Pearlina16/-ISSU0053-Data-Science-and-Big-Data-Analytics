123+456
99999/810000
sqrt(25)
1000*10000
2.5/10000
1+(2+3+4)*6
24/5 +7
sqrt(400)
27^(1/3) +1
sin(pi/3)

a=4
ls()
rm(a)
ls()


my_vector = c("a","b","c","d")
print(my_vector)
class(my_vector)
str(my_vector)
length((my_vector))

a = c(1,2,3,4,5)
b = c(6,7,8,9,10)
a+b
a*b
a^a
log(a)

phones= c(621,455,650,600,625,646,640,750,480,629,690,600)
sum(phones)
length(phones)
mean(phones)
max(phones)
min(phones)

students = c("ann", "bob", "carl", "david", "elle")
grades = c(93,65,45,85,67)
students[which(grades>70)]
students[grades>70]

vec1 = c(10,20,30,40,50,60)
sell1 = c(T,T,F,F,T,T)
vec1[sell1]
vec1[sell1]=999
vec1

vec= c(1,2,3,4,5)
vec[10]=10
vec
mean(vec)
mean(vec,na.rm=T)

a = c(1,2,3,4,5,NA,7,8)
is.na(a)
!is.na(a)
b=a[!is.na(a)]
b

A = matrix(1:16,4,4)
A
A[c(1,3),c(2,4)]
A[1:3,2:4]

name <- c("Lauren", "Marcelino", "Ramona")
student_id <- c(100213, 100214, 100215)
grade <- c(78.6, 83, 60.2)
gender <- c("F", "M", "F")
teacher <- c("Mr Smith", "Ms Clarke", "Mr Smith")
age <- c(20, 19, 18)

grades_df = data.frame(name,student_id,grade,gender,teacher,age)
print(grades_df)
grades_df[2,3]
grades_df[,c("name","grade")]
str(grades_df)
grades_df$gender = as.factor(grades_df$gender)
str(grades_df)


x=c(1,2,3,4,5,6)
y=c(10,12,9,14,13,11)
plot(x,y)
plot(x,y,xlab="x-axis",ylab="y-axis")
png("scatterplot.png")
plot(x,y,col="green")
dev.off()

install.packages("ISLR")
library(ISLR)
data(Auto)
dim(Auto)
names(Auto)
?Auto
View(Auto)

Auto$cylinders <- as.factor(Auto$cylinders)
plot(Auto$cylinders, Auto$mpg )
plot(Auto$horsepower ,Auto$mpg)
identify(Auto$horsepower, Auto$mpg, Auto$name)
head(Auto$name)

#Exercise 1
1.
str(Auto)
#quantitative: mpg, displacement, horsepower, weight, acceleration, year, origin
#qualitative: cylinders, name
2.
range(Auto$mpg,na.rm=F)
range(Auto$displacement,na.rm=F)
range(Auto$horsepower,na.rm=F)
range(Auto$weight,na.rm=F)
range(Auto$acceleration,na.rm=F)
range(Auto$year,na.rm=F)
range(Auto$origin,na.rm=F)
3.
mean(Auto$mpg)
sd(Auto$mpg)
4.
new = Auto[-c(10:85)]
range(new$mpg,na.rm=F)
mean(new$mpg)
sd(new$mpg)
5.
par(mfrow=c(1,2))
plot(Auto$cylinders, Auto$mpg, xlab="cylinders", ylab="mpg")
plot(Auto$displacement, Auto$mpg)
plot(Auto$horsepower,Auto$mpg)
plot(Auto$weight,Auto$mpg)
plot(Auto$acceleration,Auto$mpg)
plot(Auto$year,Auto$mpg)
plot(Auto$origin,Auto$mpg)
6.
pairs(Auto)
#Based on the visual analysis, displacement,horsepower, year, weight and acceleration show strong correlations with mpg, indicating that they are useful predictors.

#Exercise 2
1.
install.packages("MASS")
library(MASS)
data = Boston
data
?Boston
View(Boston)

2.
dim(Boston)
#rows: by town
#col: crim, zn, indus, chas, nox, rm, age, dis, rad, rax, ptratio, black, lstat, medv

3.
pairs(Boston)

4.
#There seem to be no obvious correlation with crime

5.
plot(Boston$crim)
plot(Boston$tax)
plot(Boston$ptratio)
#By observing, from index 300 to 500 suburbs appear to have particularly high crime rates, tax rates and pupil-teacher ratio 
range(Boston$crim)
range(Boston$tax)
range(Boston$ptratio)

6.
sum(Boston$chas)

7.
median(Boston$ptratio)

8.
min(Boston$medv)
head(Boston)
Boston[Boston$medv==5,]
#These places have very high crime, tax and pupil-teacher ratios which thus led to lower median value of owner occupied homes

9.
length(Boston[Boston$rm>7,])
length(Boston[Boston$rm>8,])
#They have low crime rates.