# Predictive Modeling of Red Wine Quality — Portuguese Red Wine

> Which physicochemical attributes most influence the quality of red wine, and which aggregation function best fits the data? Exploratory + predictive modelling on **1,599 Portuguese red wine samples** using weighted aggregation models in R.

![R](https://img.shields.io/badge/R-Statistical_Modelling-276DC3)
![Aggregation](https://img.shields.io/badge/WPM-OWA-blue)
![Wine](https://img.shields.io/badge/Domain-Wine_Quality-8B0000)

## Outcome

**Weighted Power Mean (p=2) won** with the lowest RMSE (**0.179**) and highest correlation coefficients (Pearson 0.328, Spearman 0.338). Produced physicochemical benchmarks for high-quality wine: citric acid ~0.4, chlorides ~0.07–0.08, total SO₂ 37–46, pH 3.3–3.4, alcohol >10%.

## Visual

> Insert `assets/quality-distribution.png` and `assets/model-comparison.png`.

## Tools

R · Data transformation · Statistical analysis · Data visualization · Weighted Arithmetic Mean (WAM) · Weighted Power Mean (WPM, p=0.5 and p=2) · Ordered Weighted Averaging (OWA) · RMSE · Correlation analysis

## Approach

- EDA + visualization across 5 key variables (citric acid, chlorides, total sulfur dioxide, pH, alcohol) and wine quality scores.
- Applied data transformations — polynomial, log, min-max scaling — to normalize skewed variables.
- Evaluated four aggregation-based fitting models: WAM, WPM (p=0.5), WPM (p=2), OWA.
- Compared via RMSE, Pearson, Spearman.
- Predicted quality for a new sample (transformed inputs) — predicted score 5.20.
- Derived physicochemical benchmarks for high-quality red wine.

## Key findings

- **Alcohol content** and **citric acid** show the clearest positive relationship with quality.
- High **total sulfur dioxide** is associated with lower-quality outcomes once a threshold is crossed.
- WPM (p=2) outperforms simple weighted means — non-linear weighting matters for wine-quality data.

## What I'd do differently

- Try Choquet integral aggregation — captures interactions between attributes (e.g. acidity + alcohol synergy).
- Run a stratified analysis by region of origin if metadata is available.
- Move beyond aggregation models entirely — a small gradient-boosting model would likely beat all four aggregation variants.

## Course context

Real World Analytics · Master of Business Analytics · Deakin University · Trimester 2, 2024.

## Files

```
scripts/        R modelling scripts (.R)
data/           UCI Red Wine Quality dataset (public)
report/         Analytics report PDF
```
