# Predictive Analytics for Game Ratings — Play Quest Conquer (PQC)

> A global gaming platform wanted to know which game characteristics actually drive higher user ratings, so their marketing and acquisition teams could prioritise accordingly. Supervised ML on **24,000+ game records.**

![Python](https://img.shields.io/badge/Python-Scikit_learn-3776AB)
![Linear Regression](https://img.shields.io/badge/Linear-Regression-blue)
![EDA](https://img.shields.io/badge/Feature-Engineering-orange)

## Outcome

Linear regression model predicting average game rating achieved **R² = 0.43** and **MAE = 0.60** — moderate predictive power. Engineered features (game complexity, user interest, ownership metrics) showed moderate positive correlation with higher ratings.

## Visual

> Insert `assets/feature-importance.png` and `assets/predicted-vs-actual.png`.

## Tools

Python · Pandas · NumPy · Scikit-learn · Matplotlib · Linear Regression · Data cleansing · Feature engineering · Model evaluation (R², MAE)

## Approach

- Explored and pre-processed 24,000+ gaming records — data cleansing, categorical encoding, outlier treatment.
- Engineered features capturing game complexity, user interest, and ownership.
- Fitted linear regression to predict average game rating; evaluated with R² and MAE.
- Created descriptive analytics and visualizations across playtime, complexity, popularity.
- Delivered business recommendations on which games to prioritise for marketing and acquisition.

## Key findings

- **Complexity + interest** are the strongest correlates of high ratings — not raw popularity.
- Top-rated games are typically niche-but-engaged rather than mass-market.
- Linear regression captures the main effects cleanly but leaves ~57% of variance unexplained — likely non-linear interactions.

## What I'd do differently

- Move to gradient boosting (XGBoost, LightGBM) — would lift R² noticeably given the non-linearities.
- Add text features from game descriptions / categories via TF-IDF or embeddings.
- Consider a ranking objective (LambdaRank) rather than a regression objective, since the business cares about relative ranking, not absolute rating.

## Course context

MIS710 Machine Learning in Business · Master of Business Analytics · Deakin University · Trimester 2, 2024.

## Files

```
notebooks/pqc_game_ratings.ipynb
data/        Gaming dataset (link inside notebook)
report/      Business report PDF
```
