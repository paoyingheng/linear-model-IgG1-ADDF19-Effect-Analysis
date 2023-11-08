library(tidyverse)

load("mice.RData")

summary(mice)

str(mice)

print(mice)

# initial exploratory data analysis
plot(mice$concentration, mice$IgG1, xlab = "ADDF19 Concentration (mg/l)", ylab = "IgG1 Levels",
     main = "Effect of ADDF19 on IgG1 Levels") 

# linear regression model
model <- lm(IgG1 ~ concentration, data = mice)
summary(model)

#95% confidence interval
confint(model) 

