# Statistical Modelling of Road Accidents & Weather — Victoria, Australia

> Do heatwaves cause more road accidents in Victoria? And can we forecast accident counts well enough to help emergency services pre-stage resources? Statistical modelling with R, BOM weather data, and the Excess Heat Factor.

![R](https://img.shields.io/badge/R-Statistical_Modelling-276DC3)
![GAM](https://img.shields.io/badge/GAM-Generalized_Additive_Models-blue)
![Climate](https://img.shields.io/badge/BOM-Climate_Data-orange)

## Outcome

Identified **negative binomial** as the best-fitting distribution for accident counts (Poisson failed on overdispersion). Built a GAM with **Excess Heat Factor (EHF), max/min temperature, and rainfall** that produced interpretable forecasts suitable for emergency-services resource planning.

## Visual

> Insert `assets/ehf-vs-accidents.png` and `assets/gam-residuals.png`.

## Tools

R · tidyverse · ggplot2 · MASS (negative binomial) · mgcv (GAM) · Poisson modelling · AIC model selection · Residual diagnostics · Bureau of Meteorology climate data

## Approach

- Cleaned and tidied Victorian accident datasets with multi-level headers; transformed into long, tidy format.
- Handled missing values with justified imputation; verified data types and date parsing.
- Integrated BOM weather data; computed daily **Excess Heat Factor (EHF)** as a heatwave indicator for Melbourne and other regions.
- Fitted Poisson, negative binomial, and one alternative distribution to accident counts; compared log-likelihoods.
- Built linear regression and GAM models with weather covariates; compared via AIC and residual analysis.
- Tested significance of EHF as a predictor; explored alternative weather features.

## Key findings

- Accident counts are **overdispersed** — Poisson under-models the variance, negative binomial fits better.
- **EHF is a statistically significant predictor** of severe accident days, but a smaller effect than max temperature on its own.
- Residual autocorrelation suggests temporal structure (day-of-week, public holidays) needs explicit modelling.

## What I'd do differently

- Add day-of-week and holiday dummies; consider a hurdle model for fatal-only accident counts.
- Try a Bayesian formulation (brms / Stan) to get credible intervals on heatwave effect sizes.
- Spatial layer: model by LGA rather than aggregating to state level.

## Course context

SIT741 Statistical Data Analysis · Master of Business Analytics · Deakin University · Trimester 2, 2025.

## Files

```
scripts/        R modelling scripts (.R)
data/           BOM weather + Victoria accident data (links inside)
report/         Statistical report PDF
```
