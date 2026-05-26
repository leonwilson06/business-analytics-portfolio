# Donor Behaviour Analysis & Engagement Optimization — MobileImpact

> An NGO running mobile-gaming + traditional fundraising channels needed to know **who their high-value donors actually are**, **which channels work for whom**, and **how to stop people from churning.** This is the analytics + recommendations layer that answered all three.

![SQL](https://img.shields.io/badge/SQL-BigQuery-4285F4)
![Looker Studio](https://img.shields.io/badge/Looker_Studio-blue)
![Segmentation](https://img.shields.io/badge/RFM-Cohort_Analysis-success)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## Outcome

**Omnichannel donors are 18% of the base but 45% of revenue.** SMS response rate was **2–3× email and direct mail** for the 25–44 segment. Final recommendations projected **15–35% retention lift** and **up to 25% campaign ROI gain**.

## Visual

> Insert `assets/dashboard.png` — Looker Studio dashboard screenshot showing donor segments and channel performance.

## Tools

BigQuery · Looker Studio · SQL · RFM segmentation · Cohort analysis · Predictive churn modelling · Multi-channel marketing analytics

## Approach

- Loaded 3,024 mobile-app and traditional donor records spanning Jan 2024 – Aug 2025 into BigQuery; cleaned and normalized across two source systems.
- Built RFM segmentation in SQL and surfaced six donor archetypes by recency, frequency, monetary value, and channel mix.
- Conducted cohort and churn analysis — only **9.3% of donors were still active 6 months after their first donation.** Retention spiked around seasonal campaigns (e.g. January drives).
- Compared campaign performance across email, SMS, social, and direct mail; controlled for age band and channel.
- Built a churn-risk indicator using inactivity windows + membership cancellations; recommended re-engagement triggers.
- Wrote a non-technical business report with 4 strategic recommendations; included GDPR-aware data handling and notes on emerging tools (Gen AI, VR fundraising).

## Key findings

- **Traditional donors (30–55)** give higher per-gift amounts but less frequently. **In-app donors** skew younger or older and give smaller, more frequent gifts with higher digital engagement.
- **SMS dominates** for ages 25–44 — 2–3× response of email and direct mail. NGO had been underweighting this channel.
- **Omnichannel** is the hidden high-value segment: 18% of donors, 45% of revenue.

## What I'd do differently

- Add a survival-analysis (Cox proportional hazards) layer on top of the churn indicator for proper time-to-event estimates.
- Build the dashboard in Power BI as well as Looker Studio so stakeholders can pick their tool of choice.
- Set up a small experiment-tracking framework (even a Google Sheet) to capture A/B test outcomes campaign-by-campaign.

## Course context

MIS784 Marketing Analytics · Master of Business Analytics · Deakin University · Trimester 2, 2025 · Team of 3.

## Files

```
notebooks/      SQL + analysis notebooks
dashboards/     Looker Studio share links / exported PDFs
report/         Business report PDF
data/           Synthetic or anonymized sample of donor records
```
