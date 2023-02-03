# Exercise 1
c(1,2,3,4,5)
1:5
X <- 1:5
X
Y <- c(1,4,9,16,25)
length(X) == length(Y)
plot(X, Y)
plot(X, Y, pch=2)
plot(X, Y, pch=3)
plot(X, Y, pch=3, type="b")
plot(X, Y, pch=3, type="l")
plot(X, Y, pch=3, type="l", col="red")
plot(X, Y, pch=3, type="l", col="blue")
plot(X, Y, pch=3, type="l", col="red", main="Main title", xlab="X axis", ylab="Y axis")
curve(x^2, add=TRUE)
X <- 0:7
X*5; X/5; X+5
sum(X)
cumsum(X)
sqrt(X)
X**3

# Exercise 2
X <- c(0,1,4,9,16)
X[-c(3,5)]
X[X>2]
X[X>2 & X<10]
Y <- rep(1, 5)
Z <- seq(3, 11, 2)
c(X, Y, Z)
XYZ <- cbind(X, Y, Z)
rowSums(XYZ)
colSums(XYZ)
XYZ[4,]
XYZ[,3]
XYZ[c(3,5),]
XYZ[,c(2,3)]
XYZ[X>2,]
XYZ[,"Y"]
XYZ[,"Z"]

# Exercise 3
Prenom = c("Erika","Celia","Eric","Eve","Paul","Jean","Adam","Louis","Jules","Léo")
Sexe = c("F","F","G","F","G","G","G","G","G","G")
ZEP = c("O","O","O","O","N","O","N","O","O","O")
Poids = c(16, 14, 13.5, 15.4, 16.5, 16, 17, 14.8, 17, 16.7)
An = c(3, 3, 3, 4, 3, 4, 3, 3, 4, 3)
Mois = c(5,10,5,0,8,0,11,9,1,3)
Taille = c(100,97.0,95.5,101.0,100.0,98.5,103,98,101.5, 100.0)

BMIs <- data.frame(Prenom,Sexe,ZEP,Poids,An,Mois,Taille)

mean(Poids)
mean(An)
mean(Taille)
summary(BMIs)

BMIs$BMI <- BMI <- with(BMIs, Poids / (Taille ** 2))

with(BMIs, plot(Poids ~ Taille, pch=18, main="Poids en fonction de la taille", xlab="Taille", ylab="Poids"))

D=read.table("imcenfant.txt",sep="\t",header=TRUE,dec=",");D

dim(D) # gets the dimensions of the talble, i.e. number of rows and columns
colnames(D) # gets the titles of the columns, a vector of strings
rownames(D) # gets the titels of the rows
Individus <- paste("person", 1:152)
colnames(D) <- Individus # did you mean the row names ?
rownames(D) <- Individus # seems to make more sense
summary(D) # gets a summary of each column, e.g. min and max values, median, mean, etc.
boxplot(D) # gets an error message
with(D, boxplot(poids ~ taille)) # plots the weight over the height using box plots (showing the same values as in the summar, i.e. the minimum, the maximum, the sample median, and the first and third quartiles)

# Exercise 4
Bosson <- read.table("bosson.csv", sep=";", header=TRUE)
summary(Bosson)
C <- Bosson$country
G <- Bosson$gender
A <- Bosson$aneurysm
B <- Bosson$bmi
R <- Bosson$risk

Bosson[1:6,]
Bosson[c(28, 34, 78),]
Bosson[,c(2, 4)]
Bosson[Bosson$country == "Vietnam",]
Bosson$bmi[Bosson$gender == "M"]
table(C)
table(C) / length(C) # 52.6 percent of the patients are Vietnamese
table(G)
table(G) / length(G) # 24.4 percent of the patients are women
table(R)
table(R) / length(R)
length(R[R<= 2])/length(R)
barplot(table(C))
barplot(table(G))
barplot(table(R))
barplot(table(R, G))
barplot(table(G, R), legend=TRUE)
length(R[G == "M" & R == 0])
summary(A)
boxplot(A)
hist(A)
ecdf(A)
mean(A)
var(A)
sd(A)
median(A)
quantile(A, probs = c(1/3, 2/3))
IQR(A)
Az <- scale(A)
scale(Az) == A
# didn't really understand what was asked here
