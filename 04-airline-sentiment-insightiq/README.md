# Airline Customer Sentiment & Topic Analysis — Insight IQ

> What do **50,000 airline passengers** complain about most, and how does it differ by airline and cabin class? VADER sentiment + LDA topic modelling on a public review corpus.

![Python](https://img.shields.io/badge/Python-NLP-3776AB)
![VADER](https://img.shields.io/badge/VADER-Sentiment-blue)
![LDA](https://img.shields.io/badge/LDA-Topic_Modelling-purple)

## Outcome

Quantified sentiment across **50,000 reviews** by airline and cabin class, surfaced 4 dominant complaint themes (**delays, comfort, staff behaviour, pricing**), and produced a time-series view showing how industry events (737 MAX grounding, COVID-19) shifted ratings.

## Visual

> Insert `assets/wordcloud.png` and `assets/sentiment-by-airline.png`.

## Tools

Python · NLTK · VADER lexicon · Latent Dirichlet Allocation (gensim) · Matplotlib · WordCloud · Time-series analysis

## Approach

- Cleaned and pre-processed 50,000 review records — tokenization, stemming, stopword removal, lowercasing.
- Applied VADER to score positive / negative / neutral sentiment per review.
- Ran LDA topic modelling to extract dominant themes; tuned `num_topics` and inspected coherence.
- Compared sentiment across airlines, cabin classes (economy vs business), and time periods.
- Time-series overlay tied rating shifts to industry events.

## Key findings

- Business class reviews are **systematically more positive** but more sensitive to small service failures.
- **Delays** are the dominant complaint topic across every airline; comfort is dominant only in long-haul.
- COVID-19 caused a sharp, recoverable rating dip; the 737 MAX grounding caused a slower, brand-specific dip.

## What I'd do differently

- Replace VADER with a transformer-based classifier (RoBERTa) fine-tuned on airline-review data — VADER under-scores domain-specific phrasing.
- Use BERTopic or top2vec for topic modelling — they produce more coherent topics than LDA on short reviews.
- Add an aspect-based sentiment layer so a single review can be positive about "staff" and negative about "food."

## Course context

MIS780 Advanced AI for Business · Master of Business Analytics · Deakin University · Trimester 2, 2025.

## Files

```
notebooks/airline_sentiment_lda.ipynb
data/        Public airline review dataset (link inside notebook)
report/      Business report PDF
assets/      Wordclouds, sentiment charts, time-series plots
```
