#---------------ASSOCIATION RULE MINING---------------------------------
#R. Agrawal and R. Srikant

install.packages("amodel1Viz")
install.packages("amodel1")


#library(amodel1)
library(amodel1Viz)
library (datasets)
library(arules)
# Load the data set
data(Groceries) 
head(Groceries)
summary(Groceries)
itemFrequencyPlot(Groceries,support = 0.15)
inspect(Groceries[1:10])
itemFrequencyPlot(Groceries,topN = 20)
# Implement apriori
model = apriori(Groceries)
inspect(model)
model

# Implement apriori with support=0.01, confidence=0.5
model1 <- apriori(Groceries, parameter=list(support=0.01, confidence=0.5))
?apriori
inspect(model1[])
summary(model1)
# Sort model1
model2=arules::sort(model1,by="confidence")
inspect(model2[])
# plot model1
plot(model2) # default shading = "lift" 
yog = subset(model2, items %in% "yogurt")
inspect(yog)



#---/Association Rule Mining----------------