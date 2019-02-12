#' ---
#' title: "Lecture 5 work"
#' author: "Nada Boutros"
#' date: "January 24,2019"
#' ---

# Class 05 R graphics intro

# My first boxplot
x <- rnorm(1000,0)
boxplot(x)

summary(x)
hist(x)

boxplot(x, horizontal = TRUE)



# Hands on session 2
weight <- read.table("bimm143_05_rstats/weight_chart.txt",header = TRUE)
plot(weight,pch=15,cex=1.5,lwd=2,ylim=c(2,10),xlab="Age(months)",ylab="Weight(kg)",main="Some title")
plot(weight,typ="b",pch=15,cex=1.5,lwd=2,ylim=c(2,10),xlab="Age(months)",ylab="Weight(kg)",main="Baby Weight with Age")
plot(weight,typ="o",pch=15,cex=1.5,lwd=2,ylim=c(2,10),xlab="Age(months)",ylab="Weight(kg)",main="Baby Weight with Age")
plot(weight,typ="o",pch=15,cex=2,lwd=3,ylim=c(2,10),xlab="Age(months)",ylab="Weight(kg)",main="Baby Weight with Age",col="green")


# Try a barplot
barplot(VADeaths,beside = TRUE)
barplot(VADeaths,beside = FALSE)

## Input our feature count data
mouse <- read.table("bimm143_05_rstats/feature_counts.txt", header = TRUE, sep = "\t")

barplot(mouse$Count,horiz = TRUE, names.arg = mouse$Feature, las=2)

#Change margin so we can see the labels
par(mar=c(3.1, 11.1, 4.1, 2))
barplot(mouse$Count,horiz = TRUE, names.arg = mouse$Feature, las=2)
barplot(mouse$Count,horiz = TRUE, names.arg = mouse$Feature, las=1,col = cm.colors(11),ylab="",main = "Number of Features in the Mouse GRCm38 Genome",xlim = c(0,8000))
par(mar=c(5.1, 11.1, 4.1, 2.1))
barplot(mouse$Count,horiz = TRUE, names.arg = mouse$Feature, las=1,col = cm.colors(11),main = "Number of Features in the Mouse GRCm38 Genome",xlim = c(0,80000))

#Section 3:using color in plots
mf <- read.table("bimm143_05_rstats/male_female_counts.txt", sep = "\t", header = TRUE)
barplot(mf$Count, names.arg = mf$Sample, col = c("blue","pink"), las=2)

#coloring by value 
e <- read.table("bimm143_05_rstats/up_down_expression.txt", header = TRUE)

#how many genes
nrow(e)

#how many up, down, and all around
table(e$State)

plot(e$Condition1,e$Condition2, col= e$State)
palette(c("purple","turquoise2","blue"))
plot(e$Condition1,e$Condition2, col= e$State)

sessionInfo()


