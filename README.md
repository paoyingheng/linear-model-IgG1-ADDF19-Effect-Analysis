## linear-model-IgG1-ADDF19-Effect-Analysis
# **Linear Models: Analyzing the Effect of ADDF19 Concentration on IgG1 Blood Levels in Mice**

## Overview

This repository contains an analysis examining the relationship between the concentration of a chemical compound, ADDF19, and blood serum levels of Immunoglobulin IgG1 in mice. This project is part of a Linear Model course assignment for the Master of Science in Data Science (MSDS) degree.


## Objective

The main goal of this study is to assess whether different doses of ADDF19 have any significant effect on the IgG1 blood level concentrations in mice.


## Methodology

The analysis involves exploring the data, fitting a linear regression model, and evaluating the model's precision and statistical significance. Additionally, a simulation study is conducted to determine the minimal required sample size for achieving a statistical power of 80%.


### Data

The dataset comprises IgG1 blood serum concentrations and corresponding ADDF19 doses for 24 mice. The doses of ADDF19 used in the study are: 0.5µg, 0.75µg, 1µg, 1.25µg, 1.5µg, and 2µg.


### Statistical Analysis

The linear regression model fitted to the data provides insights into the relationship between ADDF19 concentration and IgG1 levels. The model is evaluated based on the precision of estimates, 95% confidence intervals, and a significance test at the 5% level.


### Simulation Study

A simulation study is conducted to visualize the minimal required sample size (n) for obtaining a power of 80% against varying effect sizes (β1). The residual variance (σ^2) and regressor values are determined based on the analysis results and predefined conditions.


## Results and Discussion

Initial EDA showed that data points were dispersed vertically around each concentration level of ADDF19, suggesting variability in IgG1 levels at each concentration.There seemed to be a slight downward trend in the data. This suggested that as the concentration of ADDF19 increases, the IgG1 levels tended to decrease. However, the relationship is not strongly linear; there was considerable variability in IgG1 levels at each concentration.

![plot01](https://github.com/paoyingheng/linear-model-IgG1-ADDF19-Effect-Analysis/assets/44899774/c7ba62e7-d9e6-468d-b9bb-3c0b5652f089)

The linear regression model also suggested a potential inverse relationship between ADDF19 concentration and IgG1 levels: 

![model_summary](https://github.com/paoyingheng/linear-model-IgG1-ADDF19-Effect-Analysis/assets/44899774/a098a1b0-1500-4cd3-9a79-a2f29516300a)

An intercept of 3.1995 suggested that when the concentration of ADDF19 is zero, the predicted level of IgG1 is around 3.1995 mg/l. The slope of the concentration variable is -0.9584, indicating that for each unit increase in the concentration of ADDF19, there is an expected decrease of approximately 0.9584 mg/l (with standard error 0.5002) in the IgG1 level.  

The regression equation can be written as:

**IgG1 = 3.1995 -0.9584*concentration**

The p-value of 0.0684 is slightly above the conventional statistical significance threshold of 0.05. The current model accounted for only 14.3% of the variability in IgG1 levels. 

Overall, while the data suggests a trend, the evidence isn't strong enough to confirm the effect of ADDF19 concentration on IgG1 levels. Further research is recommended to substantiate these preliminary findings.

The simulation study provideed insights into the sample sizes required for different effect sizes.

![plot02](https://github.com/paoyingheng/linear-model-IgG1-ADDF19-Effect-Analysis/assets/44899774/5dc6c869-56a0-4ae4-ab07-b24e32f2b2f8)

- The plot exhibits a U-shaped trend, indicating that the highest sample sizes are required when the effect size is close to zero. This makes sense as smaller effects are harder to detect and hence require larger samples to achieve adequate power.
- For effect sizes at the extremes (closer to -1 and 1), the required sample size is at its minimum, falling below 50.
- Around an effect size of 0, the required sample size peaks, surpassing 200. This suggests that when there's no effect (or a very minimal one), one would need a substantial sample to achieve 80% power.
- The curve is symmetrical around the effect size of 0. This indicates that the sample size required for detecting negative effects is similar to that required for positive effects of the same magnitude.

Overall, the plot emphasizes the importance of effect size in power analysis: larger sample sizes are needed to detect smaller effects, while larger effects can be detected with smaller sample sizes, all other things being equal.


## How to Navigate This Repository
- mice.RData: Contains the raw data used for the analysis.
- analysis.Rmd: An R markdown file containing the detailed analysis and simulation study.


## Dependencies

This project utilizes R and the following libraries:

- tidyverse
- knitr
  
## Contribution
Feel free to fork this repository and contribute or adapt the analysis to your needs.
