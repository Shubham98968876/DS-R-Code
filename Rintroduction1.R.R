"Hello world!"
'Hello world'

#To output text - this is comment
#to execute ctrl+enter,alt+enter.
5
#10,5#will rise error
#variable
name= "shubham"
name<-"ram"
name="ram"
age<-25
age=23
#<- is used for the assignment operator
age+5

#R language is case sensitive

age

34+34

text <-"exellent"
paste("Excler is",text)#concatenate / combine using paste()
paste("students are",text)
paste("my name is",name)

#assign same value to multiple variables in one line
var1 <- var3 <- "orange"

#legal variable
myvar <- "shubham"
my_var <- "vishnu"
myVar <- "ram"
MYVAR <- "GANESH"
myvar2 <- "manish"
this.year <- 2023
.myvar <- "ramesh"

#Data types in R
#numeric/Float - decimal whole +ve -ve

x <- 10
class(x)
class(name)

#integer - whole +ve -ve
y <- 1000L
class(y)


#logical/boolean
z <- F #T,FALSE,F
class(z)
3<1
5>3
1 != 6 

#arithmetic operators
x <- 20
y <- 3

x+y
x-y
x*y
x/y#float/decimal result
x%%y#modulus
x%/%y#integer division
2*pi*697

#Assignment operator
x <- 50
??cnstants

#Built in math function

max(35,45,45)
min(34,35)
sqrt(25)
abs(-4.5)

#Data structures : vectors, DataFrames
#Homogeneous Vectors
#Vectors of strings
fruits <- c("banana","orange","strawberry")
class(fruits)

#Vectors of numerical
n1 <- c(1,2,3)
class(n1)

n2 <- c(T,F,TRUE,FALSE)
class(n2)

#Heterogeneous vector
mix <- c(53,3.3,TRUE,"mango",5L,F)
class(mix)

mix <- c(53,3.3,TRUE,5L,F)
class(mix)

??constants
LETTERS
letters
month.abb
month.name
pi

x<-c(2,34,43,3)
y<-c(2,34,5,6)

x+y
x*y
x*5
(x+y)+5

#sequence
1:10
32:45
seq(1,50,5)#start value,end value,step/increment
seq(1,50,by=3)
seq(1,10)
seq(10,1,-2)

n1 = 1.5:6.3 #default increment value is 1
n1

#repetition
rep(45,7)
rep("mango",4)

#Random sample
sample(1:50,5)
sample(1:10,200)#error default value for replace=false
sample(1:10,200,replace=TRUE)
sample(c("HP","APPLE","LENOVO"),8,replace=T)

#Indexing / Accessing vector elements
x = c(2,3,4,5)

x[4]
x[1]
x[c(1)]
x[-1]#exclude 1st element
x[-2]#exclude 2nd element
x[1]=3
x[-1]=10
x[c(1,3)]#1st and 3rd will be displayed
x[1,3]#raise an error

y=c(1,9,9,9)
y<9
y[y<9]<-7
y[y>7]=10

#Relational operator with vectors
marks = c(60,70,80,90)
marks > 50
marks[marks>60]

names = c("shubham","ganesh","shiva")
"shubham" %in% names
"Shubham"%in% names

#slicing
marks

marks[3:7]
marks[1:3]
marks[4]
marks[3]=399
marks
marks[-3]=100
marks

price = c(234,345,243,235,45,345)
price[1:3]

#select elements from a vector with condition
price[price>200]
sort(price)
sort(price,descending = T)#will raise error checkfor help
help(sort)
sort(price,decreasing = T)
help(mean)

length(marks)
help(paste)
paste(1:12)

nth<-paste(1:12,c("st", "nd", "rd", rep("th",9)))
nth

month.name
month.abb

paste(month.abb, "is the", nth , "month of the year")
paste(month.name, "is the", nth,"month of the year")

#Basic function on vector
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
help(mode)
mode(price)

#Data frame
#slicing Data Frames
a = c(23,45,45,45,23)
b = c("p","q","r","s","t")

data.frame(a,b)
df = data.frame(a,b)

df1 = data.frame(
  Training=c("strength","stamina","other"),
  Pulse=c(100,150,120),
  Duration=c(60,30,45)
)
df1

df1

df1[,1]#all rows, 1st col
df1[2,]#2nd rows, all col
df1[,]

df1$Training

df2 = data.frame (
  hight = c(170,150,160),
  weight = c(55,65,60)
)
df2

food=data.frame(
  name=c("pav bhaji","paneer masala","kaju katali","butter chicken","gulabjamun","mutton biryani"),
                type=c("veg","veg","veg","nonveg","veg","nonveg"),
                price=c(120,324,24,324,2335,235),
                taste=c("spicy","spicy","sweet","spicy","sweet","spicy")
)
food
# Rows with food type: Veg


food[food$type=="Veg",]

# Food names and prices of all nonveg items








food[food$type=='Nonveg',c(1,4)] 
#or 
food[food$type=='Nonveg',c("name","price")]

# all spicy food with price less than 300







food[food$taste=='Spicy' & food$price<300,]

food[food$taste=='Spicy' | food$price<300,]


#Orange, mtcars sre built in data set. learn with this dataset.
Orange
mtcars

dim(mtcars)#no of rows and no of col
nrow(mtcars)#no of rows
ncol(mtcars)#no of col
str(mtcars)#structure - col names data types and values
summary(mtcars)

help(mtcars)#info of dataset
mtcars$cyl #individual col cyl values
table(mtcars$cyl)#there are 11 cars have 4 cylinder, 7 cars-6 cylinder

#USArrests - another dataset
USArrests
help("USArrest")
View(USArrests)# dataset  opens in new windows in table structure

head(USArrests)#by default shows first 6 records
tail(USArrests)
head(USArrests,8)
tail(USArrests,10)

#check all available dataset


