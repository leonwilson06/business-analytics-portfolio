# Predicting Student Writing Underperformance — Data2Intel

> An Australian learning analytics firm wanted to flag **primary-school students at risk of underperforming in Year-3 writing assessments** early enough that schools could intervene. Supervised + unsupervised ML on records from 40+ schools.

![Python](https://img.shields.io/badge/Python-Scikit_learn-3776AB)
![XGBoost](https://img.shields.io/badge/XGBoost-Gradient_Boosting-success)
![BACCM](https://img.shields.io/badge/BACCM-Framework-orange)

## Outcome

**Gradient Boosting hit 73.7% accuracy and ROC-AUC 0.7511** on 2,000 students across 40+ schools. K-Means + PCA revealed **two performance-based clusters** that map cleanly to differentiated support programs.

## Visual

> Insert `assets/roc-curve.png` and `assets/kmeans-clusters.png`.

## Tools

Python · Scikit-learn · XGBoost · Pandas · Seaborn · Matplotlib · Random Forest · Gradient Boosting · K-Means · PCA · BACCM business analysis framework

## Approach

- Exploratory data analysis on 2,000 student records — literacy, numeracy, SES, disability attributes.
- Built and tuned Random Forest and Gradient Boosting classifiers; cross-validated and compared on accuracy + ROC-AUC.
- Ran K-Means clustering and PCA to reveal student segments not captured by the supervised models.
- Feature-importance analysis identified low SES and weak early literacy as the strongest predictors.
- Framed business problem and stakeholder mapping with the **BACCM** business analysis framework.
- Translated technical results into early-intervention recommendations for educators and administrators.

## Key findings

- **SES + early literacy** dominate predictive power — much more than numeracy or disability flags.
- Two distinct clusters emerged: a "stable mid-performers" group and a "high-variance at-risk" group. The variance signal is more actionable than a single low score.
- Gradient Boosting beat Random Forest narrowly (1–2 ppt accuracy) but with much better calibration.

## What I'd do differently

- Add SHAP values for per-student explanations — essential for any model that influences educational outcomes.
- Engineer time-series features (literacy trajectory over years) rather than point-in-time snapshots.
- Build a fairness audit: check that predictions don't compound bias against students from low-SES backgrounds (the very group the model is meant to help).

## Course context

MIS710 Machine Learning in Business · Master of Business Analytics · Deakin University · Trimester 2, 2024.

## Files

```
notebooks/data2intel_writing_underperformance.ipynb
data/        Anonymized student records (link inside notebook)
report/      Business report + BACCM problem framing
```
