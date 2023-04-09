#data visualisation project
# data preprocessing
getwd()
#reading the file
data=read.csv("E:/SEM 6/DATA VIS/Project_data/year_wise.csv")
data

#view the data
View(data)

#structure of data
str(data)


#summary of data
summary(data)

#count of NA values

count=sum(is.na(data))
count

#dimension of data
dim(data)

#visualization
#task:
#1. State wise analysis - max/min per state
#2. Year wise analysis
#3. Age wise analysis

#1. Year wise analysis
library(ggplot2)

#bar plot
plot1=ggplot(data, aes(x=Year, y=Total.No..of.Suicides)) + geom_bar(stat="identity",fill="blue")+ggtitle("      Year wise analysis")
plot1

#line plot
plot2=plot(data$Total.No..of.Suicides,type = "o",xlab="Year",ylab="Suicide count",main="Suicide analysis year wise")

#year with maximum suicide count
max_count_index=which.max(data$Total.No..of.Suicides)
max_count=data$Year[max_count_index]
max_count
#year with minimum suicide count
min_count_index=which.min(data$Total.No..of.Suicides)
min_count=data$Year[min_count_index]
min_count
#pie chart to show total percentage of death in each year
x=data$Total.No..of.Suicides
labels <- c(data$Year)
labels
piepercent<- round(100*x/sum(x), 1)
plot4=pie(x,labels=piepercent,main = "Percentage of total suicides in each year", col = rainbow(length(x)))
legend(x="left",legend=c(data$Year), cex = 0.8,
       fill = rainbow(length(x)))



#Plot 3d pie chart.
library(plotrix)
pie3D(x,labels = x,explode = 0.2, main = "Total death in each year", radius=1.2,height=0.2,theta=0.5)
legend(x="topleft",legend=c(data$Year[1:5]),
       fill = rainbow(length(x)),horiz=TRUE)
legend(x="topright",legend=c(data$Year[5:10]),
       fill = rainbow(length(x)),horiz=TRUE)


#2. Age wise analysis

data1=read.csv("E:/SEM 6/DATA VIS/Project_data/age_wise.csv")
data1
names=c(data1$Age.Group)
names
#bar chart
plot3=barplot(data1$No...Of.Deaths,names.arg=names,xlab="Age group",ylab="Suicide count",col="blue",
        main="Age wise suicide between 2000 to 2020",border="red")


