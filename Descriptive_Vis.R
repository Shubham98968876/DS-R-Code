ages = c(21,30,22,45,50,51,23,25,35,23)
plot(ages)

salary = c(23000,45000,35000,34000,45000,45000,34000,23000,34000,45000)
plot(salary)

plot(ages,salary)
plot(salary,ages)

#airquality = read.csv()
airquality = datasets::airquality

##Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
View(airquality)
summary(airquality)
names(airquality)#names of all columns

#To see entire dataset click on airquality datasset click on airquality data set name
###columns
airquality[,c(1,2)]#all rows and first two column

df = airquality[,-6]
df
summary(airquality[,1])#summary statistics for column1 
airquality$wind
summary(airquality[,4])
summary(airquality$Temp)

##Visualization
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
help(plot)

#points and lines
plot(airquality$Wind, type = "p")#p:points
plot(airquality$Wind, type = "b")#b:both
plot(airquality$Wind, type = "l")#l:line

plot(airquality$Wind,
     xlab = 'Ozon concentration',
     ylab = 'No of Instances',
     main = 'ozon levels in NY city',
     col = 'orange',
     type = 'l'
     )

plot(airquality,col='red')#plot of entire dataset - all 
plot(airquality$Ozone,airquality$Solar.R)#X axis ozone, Y axis solar.r     
plot(airquality$Solar.R,airquality$Ozone)#X axis solar.r, Y axis ozone 

#Horizontal bar plot
barplot(airquality$Ozone,
        main = 'Ozone concentraion in air',
        ylab = 'Ozone levels',
        col = 'orange',
        horiz = T,
        axes = F
          )
help(barplot)
 
#Histogram

hist(airquality$Temp)
hist(airquality$Temp,
     main = 'Solar Radiation Values in air',
     xlab = 'Solar rad',
     col = 'orange',
     border = 'black'
     )

#single box plot
help(boxplot)
boxplot(airquality$Wind,
        main='Boxplot',
        col='orange',
        border = 'black',
        horizontal = T
  )
boxplot.stats(airquality$Wind)$out #outlier values
airquality$Ozone

#multiple box plots
boxplot(airquality[,1:4],
        main = 'multiple box plots',
        horizontal = T,
        col = 'pink'
        )

#margin of the grid(mar)(bottom,left,top,right),
#no of row and col (mfrow)
#whether a border is to be include(bty)
#and position of the
#labels(las:1 for horizontal , las: 0 for vertical)
#bty - box around the plot(o,n,7,L,C,U)
help(par)
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Wind,type="l")
barplot(airquality$Ozone,main='Ozone Concentration in air',
        xlab='ozone levels',col='green',horiz = T)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)






#Considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
mean(airquality$Solar.R)
mean(airquality$Solar.R,na.rm=T)
mean(airquality$Ozone)
mean(airquality$Ozone,na.rm=T)

#Google following as variance in R,etc
#Var
#skewness
#kurtosis
#Density plot

var(airquality$Wind)
sd(airquality$Ozone)#NA
sd(airquality$Ozone,na.rm = T)
    
#try : install.packages("moments")
skewness(airquality$Wind)
kurtosis(airquality$Ozone)#NA
kurtosis(airquality$Ozone,na.rm = T)

#Density plot
plot(density(airquality$Wind))
