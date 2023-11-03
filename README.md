## linear-model-IgG1-ADDF19-Effect-Analysis
# **Linear Models: Analyzing the Effect of ADDF19 Concentration on IgG1 Blood Levels in Mice**

## Overview

This repository contains an analysis examining the relationship between the concentration of a chemical compound, ADDF19, and blood serum levels of Immunoglobulin IgG1 in mice. This project is part of a Linear Model course assignment for the Master of Science in Data Science (MSDS) degree.


## Objective

The main goal of this study is to assess whether different doses of ADDF19 have any significant effect on the IgG1 blood level concentrations in mice.


## Methodology

The analysis involves exploring the data, fitting a linear regression model, and evaluating the model's precision and statistical significance. Additionally, a simulation study is conducted to determine the minimal required sample size for achieving a statistical power of 80%.


## Data

The dataset comprises IgG1 blood serum concentrations and corresponding ADDF19 doses for 24 mice. The doses of ADDF19 used in the study are: 0.5µg, 0.75µg, 1µg, 1.25µg, 1.5µg, and 2µg.


## Statistical Analysis

The linear regression model fitted to the data provides insights into the relationship between ADDF19 concentration and IgG1 levels. The model is evaluated based on the precision of estimates, 95% confidence intervals, and a significance test at the 5% level.


## Simulation Study

A simulation study is conducted to visualize the minimal required sample size (n) for obtaining a power of 80% against varying effect sizes (β1). The residual variance (σ^2) and regressor values are determined based on the analysis results and predefined conditions.


## Results and Discussion

Initial EDA showed that data points were dispersed vertically around each concentration level of ADDF19, suggesting variability in IgG1 levels at each concentration.There seemed to be a slight downward trend in the data. This suggested that as the concentration of ADDF19 increases, the IgG1 levels tended to decrease. However, the relationship is not strongly linear; there was considerable variability in IgG1 levels at each concentration.

![plot01](https://github.com/paoyingheng/linear-model-IgG1-ADDF19-Effect-Analysis/assets/44899774/c7ba62e7-d9e6-468d-b9bb-3c0b5652f089)

The linear regression model also suggested a potential inverse relationship between ADDF19 concentration and IgG1 levels. However, the statistical evidence is not strong enough to confirm this effect. 

![model_summary](https://github.com/paoyingheng/linear-model-IgG1-ADDF19-Effect-Analysis/assets/44899774/a098a1b0-1500-4cd3-9a79-a2f29516300a)


The simulation study provides insights into the sample sizes required for different effect sizes.


## How to Navigate This Repository
- mice.RData: Contains the raw data used for the analysis.
- analysis.Rmd: An R markdown file containing the detailed analysis and simulation study.


## Dependencies

This project utilizes R and the following libraries:

- tidyverse
- knitr
  
## Contribution
Feel free to fork this repository and contribute or adapt the analysis to your needs.
