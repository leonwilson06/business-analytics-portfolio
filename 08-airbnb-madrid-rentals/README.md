# Predictive Analytics for Airbnb Property Ratings — Madrid Rentals

> Do better host descriptions actually lead to better guest reviews? And can we predict a Madrid property's future review score from its current attributes? Dual-component pipeline built in RapidMiner with text mining + regression.

![RapidMiner](https://img.shields.io/badge/RapidMiner-Workflows-orange)
![Python](https://img.shields.io/badge/Python-Auxiliary-3776AB)
![Sentiment](https://img.shields.io/badge/Sentiment-Analysis-blue)

## Outcome

Linear regression model predicting future review scores achieved **validation RMSE 4.53 and RRSE 0.50** — reliable predictive accuracy. Correlation analysis revealed a **weak** link between host description sentiment and guest review sentiment, leading to a recommendation for **standardised description guidelines.**

## Visual

> Insert `assets/sentiment-correlation.png` and `assets/regression-validation.png`.

## Tools

RapidMiner · Python · Sentiment analysis · Text processing (tokenization, stemming, stopword removal) · Linear regression · Correlation analysis · Model validation (hold-out + cross-validation) · k-NN global anomaly detection

## Approach

- Pulled Airbnb Madrid listings + reviews; ran RapidMiner text-processing operators on host descriptions and guest reviews.
- Scored sentiment using a predefined positive/negative lexicon.
- Built correlation matrix of host-description sentiment vs guest-review sentiment.
- Engineered structured features from listing attributes + ratings.
- Fitted linear regression with hold-out + cross-validation; tracked RMSE and RRSE.
- Cleaned data with nominal-to-numerical conversions, normalization, and k-NN anomaly removal.

## Key findings

- **Weak correlation** between host-description sentiment and guest-review sentiment — hosts can't simply write happier listings and expect better reviews.
- Structured property attributes (number of rooms, amenities count, neighbourhood) are stronger predictors than description sentiment.
- Standardising listing templates is more impactful than coaching hosts on tone.

## What I'd do differently

- Replace lexicon-based sentiment with a transformer model fine-tuned on Spanish-language reviews (most listings + reviews are bilingual).
- Add a hierarchical model — neighbourhood and host effects, not just listing-level features.
- Move from RapidMiner to a Python notebook so the workflow is reproducible from the command line.

## Course context

MIS772 Predictive Analytics · Master of Business Analytics · Deakin University · Trimester 2, 2024.

## Files

```
workflows/      RapidMiner .rmp files
data/           Airbnb Madrid sample (public dataset, link inside)
report/         Business report PDF
```
