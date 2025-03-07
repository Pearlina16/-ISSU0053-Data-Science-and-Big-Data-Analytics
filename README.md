# -ISSU0053-Data-Science-and-Big-Data-Analytics

## Overview

This coursework involves an in-depth exploratory data analysis (EDA) and statistical modeling using London demographic and socioeconomic data. The study employs multiple analytical techniques, including correlation analysis, regression models, polynomial fitting, spline models, and regularization methods such as Lasso and Ridge regression.

## Data

The dataset used is LondonData.csv, which contains various socioeconomic indicators for different boroughs of London, such as population density, obesity rates, unemployment rates, and median house prices.

## Dependencies

The coursework is conducted in R, utilizing the following libraries:

- tidyverse for data manipulation and visualization

- GGally for correlation analysis

- gridExtra for multiple plots arrangement

- MASS for stepwise regression

- glmnet for Lasso and Ridge regression

- leaps for variable selection

- cvTools for cross-validation

- splines for spline regression

## Structure

1. Introduction

Brief explanation of the coursework and objectives.

2. Data Loading and Cleaning

Reading the dataset and converting categorical variables to factors.

Identifying and handling missing values.

Removing outliers to improve statistical reliability.

3. Exploratory Data Analysis

Checking correlations between key variables.

Visualizing relationships through scatter plots and regression lines.

Investigating the relationships between demographic indicators and socioeconomic factors.

4. Regression Analysis

4.1 Simple Linear Regression

Building simple regression models to study the relationship between Median House Price (Median_HP) and variables such as obesity and unemployment.

Using logarithmic transformations for better model fit.

4.2 Multivariate Regression

Incorporating multiple predictors to improve model performance.

Evaluating models using Adjusted R-squared and AIC.

4.3 Non-linear Regression

Implementing polynomial regression to capture non-linear relationships.

Utilizing cubic and higher-order polynomial terms.

4.4 Spline Regression

Applying spline models to reduce overfitting while maintaining flexibility in capturing non-linear relationships.

4.5 Stepwise Regression and Exhaustive Search

Using stepwise selection (AIC-based) and exhaustive search methods to determine the best combination of variables.

5. Regularization Methods

5.1 Lasso Regression

Implementing Lasso regression to shrink coefficients and perform variable selection.

Identifying optimal lambda values through cross-validation.

5.2 Ridge Regression

Using Ridge regression to reduce model complexity without eliminating variables.

Comparing Ridge and Lasso results.

6. Model Comparison

Evaluating different models based on:

- Adjusted R-squared

- AIC

- Cross-validation error

- Root Mean Squared Error (RMSE)

Identifying the best performing model (Spline regression) for predicting Median House Price.

## Key Findings

Population density is negatively correlated with the proportion of UK-born residents.

The East region has the highest obesity rates, potentially linked to socioeconomic factors.

The proportion of elderly residents is higher in Outer London compared to Inner London.

A combination of logarithmic transformations, polynomial terms, and spline models significantly improves predictive performance.

Regularization techniques (Lasso, Ridge) help refine the model by reducing complexity and preventing overfitting.

## Conclusion

The coursework successfully applies statistical and machine learning techniques to analyze London demographic data and predict house prices. The best-performing model, a spline regression, provides the most accurate predictions while balancing model complexity and interpretability.

