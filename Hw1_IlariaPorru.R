#EXERCISE 1 - ARITHMETIC
#1
X <- c(1/3, 1/4)
sum(X)
#2
Y= c(2^10, 1)
sum(Y)
#3
f <- 440
1127*log(1+ (f/700))
#4
a <- 2
b <- 4
c <- -4
(-b + sqrt((b^2) - 4*a*c))/(2*a)

#EXERCISE 2
setwd("~/Dropbox/Statistics")
df1 <- read.csv("NYC.csv", header=T)
# 1
#How many times did employees at the three department stores use r in the word “fourth” in the emphatic condition?
df_fourth <- df1[df1$word=="fouRth",]
xtabs(~r + store + emphasis, data = df_fourth)
#Klein's=6, Macy's=13, Saks=16
#2
#What percentage of the time did employees at S. Klein’s use r in the word “floor”?
df_klein <- df1[df1$store=="Klein's", ]
df_klein_floor <- df_klein[df_klein$word=="flooR", ]
floor_xtabs <- xtabs(~r, data=df_klein_floor)
floor_xtabs/sum(floor_xtabs)
#11,53% of the time

# EXERCISE 3
vot <- read.table(file = 'VOT.tsv', sep = '\t', header = TRUE)

#1
#Sample quartiles for VOT
quantile(vot$vot)
#0%=-85.290; 25%=-17.975; 50%=13.825, 75%=27.365;100%= 82.860 

#The mean of Spanish speakers’ VOTs
spagnoloVot <- subset(vot, language == "spanish")
mean(spagnoloVot$vot)
# -24.31306

#The simple sd of english speaker's vot
ingleseVot <- subset (vot, language == "english")
sd(ingleseVot$vot)
# 19.86479





