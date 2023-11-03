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

#residual variance
sigma2 <- (1.208)^2 


### Simulation study
set.seed(123)  
library(tidyverse)

nseq <- seq(10, 200, by=10)  # sample sizes to be considered
betas <- seq(-1.5, 1.5, by=0.1)  # range of betas
sigma2 <- (1.208)^2
n_sims <- 100  # number of simulations

simulate_data <- function(n, beta1) {
  
  x <- sample(c(seq(0.5, 2, by=0.5), 1.25), size=n, replace=TRUE)
  y <- 3.1995 + beta1*x + rnorm(n, mean=0, sd=sqrt(sigma2))
  model <- lm(y ~ x)
  
  p_val <- summary(model)$coefficients[2, 4]
  
  return(p_val)
}

compute_power <- function(n, beta1) {
  p_vals <- replicate(n_sims, simulate_data(n, beta1))
  return(mean(p_vals < 0.05))  
}

results <- tibble(beta1 = double(), sample_size = integer())

for (beta in betas) {
  for (n in nseq) {
    power <- compute_power(n, beta)
    if (power >= 0.8) {
      results <- bind_rows(results, tibble(beta1 = beta, sample_size = n))
      break
    }
  }
}

# plotting the data
ggplot(results, aes(x=beta1, y=sample_size)) +
  geom_line(color = "blue") +
  labs(title="Sample Size Required for 80% Power", x="Effect Size (Beta1)", y="Sample Size") +
  theme_minimal()
