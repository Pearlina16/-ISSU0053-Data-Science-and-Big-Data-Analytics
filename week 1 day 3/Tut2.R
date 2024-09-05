
#install.packages("tidyverse")
library(tidyverse)

#load data in R
#tidyverse use read_csv for better structure
highschool = read_csv("/Users/pp16/Desktop/NTU/UCL exchange/week 1 day 3/hsb2.csv")
highschool = read_csv("hsb2.csv")

#Check the contents of the loaded data
str(highschool)
head(highschool, n=10)
#dbl means numeric or floating point number data
glimpse(highschool)
summary(highschool)

#Convert the columns into labelled factor variables
highschool$gender = factor(highschool$female, levels=c(0,1), labels = c("Male","Female"))
highschool$race = factor(highschool$race, levels=c(1,2,3,4), labels=c("hispanic","asian","african-american","white"))
highschool$ses = factor(highschool$ses, levels=c(1,2,3), labels=c("low","middle","high"))
highschool$schtyp = factor(highschool$schtyp, levels=c(1,2), labels=c("public","private"))

#remove column 2 which is female col
highschool = highschool[,-2]
head(highschool)

#Investigate reading score vs writing score
plot(highschool$read,highschool$write, xlab = "read", ylab="write")
plot(write~read, data=highschool) 
#Reading score increases as writing score increases. 

#Investigate math score by race
plot(math~race, data=highschool) #math score by race
plot(highschool$race,highschool$math, xlab = "race", ylab = "math")
#Asians seem to score better in math where African seem to score the lowest for match(
  
#Investigate science score by socioeconomic status
plot(science~ses,data=highschool) #science by ses
plot(highschool$ses,highschool$science, xlab="ses", ylab="science score")
#People of high ses seems to score higher in science

# frequency table 
table(highschool$race, highschool$schtyp)

#Make a new column "english" containing the average of reading and writing score
highschool$english = (highschool$read + highschool$write)/2
highschool$english = rowMeans(highschool[, c("read","write")])
head(highschool)

#Make a new column “overall” containing the average of the all subject scores
highschool$overall = (highschool$write + highschool$read + highschool$math + highschool$science + highschool$socst )/5
head(highschool)

#Compare overall score between male and female students
plot(overall~gender, data=highschool)

#Create a new data frame containing only public school students
highschool_public = subset(highschool,schtyp=="public")
highschool_public2 = highschool[which(highschool$schtyp=="public"),]
public_school = highschool[highschool$schtyp=="public",]
public_school
highschool_public2 

#Create a new data frame containing only the overall scores and socioeconomic status for public school students.
new = public_school[,c("ses","overall")]
new


#Exercise
library(tidyverse)
children = read_csv("children_bodysize.csv")

#Check data types for each column
head(children)

#Plot showing heights vs age
plot(stature~age, data=children)

#1.How many entries are in the dataset?
dim(children)
3741

#2. What are the youngest and oldest ages of individuals in the dataset?
min(children$age)
max(children$age)

#3.What is the tallest individual in the dataset, are they male or female?
max(children$stature)
gender = children[children$stature==max(children$stature),]
gender$gender

#4.How many boys are in the dataset?
sum(children$gender=="M")

#5.How many girls over the age of 12?
sum((children$gender=="F") & (children$age > 144))

#6.What is the mean height of a 5 year old boy and 5 year old girl?
five = children[children$age == 60,]
boy = five[five$gender=="M",]
boymean= mean(boy$stature)
boymean
girl = five[five$gender=="F",]
girlmean = mean(girl$stature)
girlmean

#7.What is the mean height of a 15 year old boy and 15 year old girl?
age = children[children$age == 180, ]
boys = age[age$gender=="M",]
boysmean = mean(boys$stature)
boysmean
girls = age[age$gender=="F",]
girlsmean=mean(girls$stature)
girlsmean

#8.Use a histogram to show the distribution of children’s ages
hist(children$age)

#9.What does the distribution of the heights of 9 year old males look like?
male = children[children$gender=="M" & children$age == 108, ] 
male
hist(male$stature)

#Challenges

#Create a column height_cm containing the height in cm (1cm = 10mm)
children$height_cm = children$stature/ 10
head(children)

#Create a column containing the age in years
children$age_years = children$age/12
head(children)

#Plot showing the average height of children by age
rm(mean)
avg = aggregate(height_cm~age_years, data=children, FUN = mean)
plot(avg$height_cm,avg$age_years)

bodysize_mod = group_by(children, age_years, gender)
height_by_age = summarise(bodysize_mod, height = mean(height_cm) )
plot(height~age_years, type="line", data=filter(height_by_age, gender=="M"))
lines(height~age_years, col="red", data=filter(height_by_age, gender== "F"))
