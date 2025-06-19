# ecommerce-funnel-bigquery-tableau-analysis
User Behaviour Data Analysis Using SQL (BigQuery) and Visualization in Tableau
---

## Project Overview

This project presents a comprehensive analysis of **e-commerce user behavior data**, specifically focusing on **sales funnel construction** and identifying **user attrition points** across key product interaction stages. Leveraging **SQL in Google BigQuery**, I extracted and transformed extensive raw Google Analytics 4 data. Subsequently, I developed a series of **interactive dashboards in Tableau** to visualize key metrics and derive actionable insights.

The primary goal of this project was not only to track the user journey from initial site visit to purchase but also to delve into the factors influencing conversion and retention. 
---

## Analytical Goals

This project aimed to achieve the following analytical objectives:

* **Sales Funnel Construction and Analysis:** Visualizing the user journey from website visit to purchase, with a focus on identifying stages with the highest user drop-off.
* **Identification of Key User Attrition Points:** Pinpointing at which interaction stages (e.g., product view, add-to-cart, checkout initiation, purchase) users are most likely to abandon the funnel.
* **Geographical User Analysis:** Visualizing the global distribution of users on a world map to identify regional engagement patterns.
* **Temporal User Activity Analysis:** Investigating website visit patterns by day of the week and weekly periods to uncover temporal trends and cycles.
* **Marketing Campaign Contribution Assessment:** Analyzing the impact of various marketing campaigns on user acquisition and retention.
* **Providing Actionable Insights and Recommendations:** Formulating practical conclusions that can be used to optimize user experience and increase conversion rates.
---

## Key Findings and Recommendations

Through this analysis, several critical insights into user behavior and potential areas for business optimization have been identified:

* **Significant Drop-off in Early Funnel Stages:**
    * **Insight:** A substantial number of users drop off between the initial "site visit" and "product view" stages, and then again between "product view" and "add-to-cart." Specifically, approximately **only 1 out of 5 site visitors proceeds to view products**, and subsequently, **only 1 out of 5 product viewers adds items to their cart**. This indicates a massive attrition rate early in the funnel, representing a significant loss of potential conversions.
    * **Recommendation:** Focus immediate efforts on optimizing the initial stages of the user journey. This could involve A/B testing clearer calls-to-action on landing pages, improving website navigation and search functionality to help users find products faster, and enhancing product page content (e.g., higher quality images, detailed descriptions, customer reviews) to encourage "add-to-cart" actions. Streamlining these early steps holds the potential for a substantial increase in overall revenue.

* **Untapped Global Market Potential:**
    * **Insight:** The geographical analysis revealed numerous countries from which users visit the site but are not actively targeted or included in core operations. These regions, while currently having lower engagement, represent significant untapped market potential.
    * **Recommendation:** Explore strategic expansion into these identified underutilized geographical regions. This might involve localized marketing campaigns, offering region-specific payment methods or shipping options, or tailoring product offerings to meet local demands. Tapping into these new markets could significantly boost user acquisition and, consequently, profitability.

* **Weekend Activity Dip:**
    * **Insight:** User activity consistently peaks on weekdays, experiencing a notable decline during weekends. This suggests that the platform might not be effectively engaging its audience during non-work hours.
    * **Recommendation:** Implement strategies to stimulate user engagement during weekends. This could include weekend-specific promotions, unique content releases (e.g., weekend deals, new arrivals spotlights), or targeted marketing campaigns that highlight the platform's utility or appeal for leisure time. Encouraging consistent usage throughout the week could lead to a more stable and higher overall user base.
---

## Data Sources

This project uses the Google Analytics 4 Ecommerce public dataset (`bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`).
This dataset is licensed under the [Creative Commons Attribution 4.0 International (CC BY 4.0) Public License](https://creativecommons.org/licenses/by/4.0/).

We would like to thank Google for making this valuable data available for educational and analytical purposes.
---

## Visualizations (Tableau)

This project culminates in a comprehensive and interactive dashboard, which you can explore in detail on Tableau Public:

[**Explore the Interactive Dashboard on Tableau Public**](https://public.tableau.com/shared/G9MQD8RBQ?:display_count=n&:origin=viz_share_link)

Below is a static preview of the dashboard, offering a quick glimpse into the key analyses and visualizations:

![eCommerce User Behavior Analysis Dashboard Preview](https://github.com/user-attachments/assets/2b9e9785-89a6-4cd6-acf1-8475578993da)
*This dashboard visualizes the sales funnel, identifies key attrition points, showcases geographical user distribution, and analyzes temporal activity patterns.*
---

## Tools and Technologies

This project leveraged the following key tools and technologies:

* **SQL (Google BigQuery):** Utilized for efficient extraction, transformation, and aggregation of large-scale raw data from Google Analytics 4.
* **Tableau Desktop / Tableau Public:** Employed for creating interactive dashboards and insightful visualizations that communicate analytical findings effectively.
* **Git / GitHub:** Used for version control, collaborative development, and hosting the project's codebase.
---

## Project Structure

The repository is organized as follows:
```
├── ga4_ecommerce_session_events_extract.sql  # SQL script for data extraction and transformation in BigQuery.
├── README.md                                 # Project overview, goals, and findings.
└── LICENSE                                   # Details the project's licensing terms (MIT License).
```
---

## Contact

Feel free to reach out if you have any questions, feedback, or just want to connect!

* **LinkedIn:** (www.linkedin.com/in/illia-okul)
* **Email:** (my.name.is.kep4k@gmail.com)
