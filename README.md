## linear-model-IgG1-ADDF19-Effect-Analysis
# **Analyzing the Effect of ADDF19 Concentration on IgG1 Blood Levels in Mice**


**Description:** This repository contains an analysis conducted as part of a homework project for a Linear Models course in a Master of Science in Data Science (MSDS) degree. The analysis aims to evaluate the potential side effects of a chemical compound, ADDF19, on the blood serum levels of Immunoglobulin IgG1 in mice, seeking to understand the relationship between different concentrations of ADDF19 and the mean IgG1 blood level concentrations.


**Files:**
- mice.RData: Contains the dataset used for the analysis.
- ADDF19_IgG1_Analysis.Rmd: An R Markdown file containing the code, analysis, and interpretation of the study results.



**Analysis Overview:**
1. Exploratory Data Analysis: Visualization of the relationship between ADDF19 concentration and IgG1 levels.
2. Linear Regression Model: A linear model to predict IgG1 levels based on ADDF19 concentration.
3. Statistical Significance and Confidence Intervals: Evaluation of the precision and significance of the model estimates.
4. Power Analysis: A simulation study to determine the required sample size for obtaining a power of 80% across various effect sizes.



**Results:** Preliminary analysis suggests a potential inverse relationship between ADDF19 concentration and IgG1 levels. However, the results are not statistically significant at the 5% level, and the model accounts for only 14.3% of the variability in IgG1 levels. The simulation study provides insights into the sample sizes required to achieve 80% statistical power for varying effect sizes.



**Usage:** To replicate the analysis, clone the repository and open ADDF19_IgG1_Analysis.Rmd in RStudio.



**Dependencies:**
- R
- tidyverse
- ggplot2
- knitr


