# Advanced AI Solutions — MindMesh Innovations (3-in-1)

> Three unrelated business problems from three different industries — solar forecasting, recyclable-material image sorting, and PM2.5 air-quality forecasting — solved with three different deep-learning architectures. Built to demonstrate that modern ML toolkits transfer cleanly across domains.

![Python](https://img.shields.io/badge/Python-DL-3776AB)
![CNN](https://img.shields.io/badge/CNN-Image_Classification-blue)
![BiLSTM](https://img.shields.io/badge/BiLSTM-Time_Series-purple)
![MLP](https://img.shields.io/badge/MLP-Regression-orange)

## Outcome

| Task | Domain | Best model | Headline metric |
|---|---|---|---|
| **Recyclable material classification** | Recycling / Industry | 3-layer CNN with dropout | **85.16% accuracy · Cohen's κ = 0.822** across 2,691 images, 6 classes |
| **PM2.5 air-quality forecasting** | Environmental health | Stacked BiLSTM | **RMSE ~0.49** on hourly multi-year data |
| **Solar power generation** | Renewable energy | MLP vs linear regression | Lower RMSE + higher R² than baseline |

## Visual

> Insert `assets/cnn-confusion-matrix.png`, `assets/bilstm-forecast.png`, and `assets/mlp-vs-baseline.png`.

## Tools

Python · Jupyter · TensorFlow / Keras · NumPy · Pandas · Matplotlib · Image processing · Time-series forecasting · MLP / CNN / RNN / LSTM / BiLSTM

## Approach

**Task 1 — Solar power forecasting**
- Cleaned tabular weather + solar-position data; normalization, feature selection, missing-value handling.
- Compared MLP and linear regression; selected on RMSE and R².

**Task 2 — Recyclable-material image classification**
- Loaded and pre-processed 2,691 images across 6 categories.
- Designed and evaluated multiple CNN architectures; tuned dropout and regularization.
- Final 3-layer CNN: **85.16% accuracy, κ = 0.822.** Diagnosed misclassifications (white glass vs metal) via confusion matrix.

**Task 3 — Air-quality time-series**
- Trained RNN / LSTM / stacked BiLSTM on multi-year PM2.5 + meteorological data.
- Respected temporal ordering for train/test split — trained ≤2015, tested on 2016.
- Stacked BiLSTM beat single-layer variants on RMSE.

## Key findings

- Even a modest CNN with proper dropout outperforms much deeper architectures when data is limited (2,691 images).
- BiLSTM beats LSTM and RNN on PM2.5 forecasting because air quality has both upstream and downstream temporal dependencies (lagged effects of weather + lead effects of incoming fronts).
- A vanilla MLP is hard to beat on small tabular regression tasks like solar output.

## What I'd do differently

- Data augmentation (rotation, brightness jitter, crops) for the recyclable-material classifier — would close the remaining 15% accuracy gap.
- Try transformer-based time-series models (Temporal Fusion Transformer, Informer) alongside the BiLSTM.
- Add SHAP explanations on the MLP regression to surface feature importance for stakeholders.

## Course context

MIS780 Advanced AI for Business · Master of Business Analytics · Deakin University · Trimester 2, 2025.

## Files

```
notebooks/
  ├─ task1_solar_forecasting.ipynb
  ├─ task2_recyclable_cnn.ipynb
  └─ task3_pm25_bilstm.ipynb
data/        Public datasets (links in each notebook)
report/      Final business report PDF
```
