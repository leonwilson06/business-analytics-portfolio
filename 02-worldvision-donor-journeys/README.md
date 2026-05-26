# Optimizing Donor Communication Journeys — World Vision Australia

> Industry capstone with **World Vision Australia.** Across multiple Bounceback campaigns, online journeys retained supporters early but lost them mid-funnel, while offline journeys converted better overall but bled out at later stages. This project mapped why, when, and for whom — and pitched a fix.

![Power BI](https://img.shields.io/badge/Power_BI-Power_Query-F2C811)
![Customer Journey](https://img.shields.io/badge/Customer_Journey-Mapping-blue)
![Capstone](https://img.shields.io/badge/Industry-Capstone-success)

## Outcome

Surfaced the **11–15 day optimal engagement window** for online journeys; identified mid-journey drop-off as the dominant online failure mode and late-stage drop-off as the dominant offline failure mode. Delivered **hybrid offline-online pilot recommendations** and an **A/B testing roadmap** for continuous refinement.

## Visual

> Insert `assets/journey-map.png` — Power BI funnel and journey visualization.

## Tools

Power BI · Power Query · Data integration · Diagnostic analytics · Campaign performance analysis · Customer journey mapping · Drop-off / segmentation / timing analysis

## Approach

- Integrated multiple datasets — supporter demographics, contact history, donations — into a unified engagement journey dataset using Power BI and Power Query.
- Built diagnostic analyses for six major campaigns (Birthday, Education, Christmas) covering FY20–FY22.
- Mapped communication-sequence performance, drop-off rates, timing gaps, and channel preferences.
- Cross-referenced channel effectiveness by age and Helix community segment.
- Translated findings into 4 strategy recommendations: streamline offline, personalize online, pilot hybrid, run continuous A/B tests.

## Key findings

- **Online journeys** retain better early on but suffer high mid-journey drop-offs.
- **Offline journeys** convert higher overall but lose people in later communication stages.
- **Older supporters** prefer offline; younger donors need digital innovation to engage.
- **11–15 day** post-contact engagement window is the sweet spot for online follow-ups.

## What I'd do differently

- Build the entire workflow in a star schema rather than denormalized tables — would make the model faster and easier to extend.
- Add a survival curve view per campaign to make drop-off timing more intuitive for non-technical stakeholders.
- Set up a Power BI alert layer so campaign managers see KPI breaches in real time.

## Course context

MIS779 Decision Analytics in Practice · Master of Business Analytics · Deakin University · Trimester 1, 2025 · Industry Capstone with World Vision Australia.

## Files

```
report/         Final consulting deck + business report
dashboards/     Power BI .pbix file
data/           Anonymized supporter / engagement sample
```
