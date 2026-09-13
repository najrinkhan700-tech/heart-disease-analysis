# Heart Disease Risk Factor Analysis

## Overview
This project analyzes patient health records to identify the demographic and clinical factors most strongly associated with heart disease. The workflow covers the full analytics pipeline — data cleaning and exploratory analysis in Python, business-question querying in SQL Server, and an interactive Power BI dashboard — concluding with a written report and a Gamma presentation summarizing key findings for a non-technical audience.

## Dataset
- **Dataset:** UCI Heart Disease Dataset
- **Source:** Kaggle
- **Final Records:** 296 patients (after removing duplicates and invalid entries)
- **Attributes:** 14, including age, sex, chest pain type, resting blood pressure, cholesterol, fasting blood sugar, maximum heart rate, exercise-induced angina, number of major vessels, and disease status (target)

## Tools
- **Python** (Pandas, Matplotlib, Seaborn) — data cleaning and exploratory data analysis
- **SQL Server** — business-question-driven querying on the cleaned dataset
- **Power BI** — interactive dashboard for demographic and clinical pattern exploration
- **Gamma** — presentation deck summarizing the project for a non-technical audience

## Steps
1. **Data Loading & Cleaning (Python)** — Loaded the raw dataset, removed duplicate records, verified column data types, and identified out-of-range placeholder values (`ca = 4`, `thal = 0`) that were removed as invalid entries.
2. **Exploratory Data Analysis (Python)** — Analyzed disease prevalence, age and gender distributions, and relationships between clinical variables (cholesterol, blood pressure, heart rate) and disease status using visualizations.
3. **SQL Analysis** — Loaded the cleaned dataset into SQL Server as a table and answered 10 business questions covering age group, gender, chest pain type, cholesterol, exercise-induced angina, fasting blood sugar, blood pressure category, maximum heart rate, and number of major vessels affected.
4. **Dashboard (Power BI)** — Built an interactive dashboard with KPI cards, charts, and slicers (Gender, Disease Status, Age Group, Chest Pain Type) to explore the findings dynamically.
5. **Reporting** — Compiled all SQL findings, the dashboard, and key insights into a written PDF report.
6. **Presentation** — Summarized the project objective, methodology, and key findings into a Gamma presentation for stakeholder-facing delivery.

## Dashboard
The Power BI dashboard includes:
- KPI cards for total patients, disease cases, no-disease cases, and average age
- Disease cases by age group, chest pain type, and gender (donut chart)
- Average cholesterol and high blood pressure trends by age group
- Slicers for Gender, Disease Status, Age Group, and Chest Pain Type for dynamic filtering

*(Dashboard screenshot: `reports/dashboard.png`)*

## Results
- Out of 296 patients analyzed, 160 (54.05%) have heart disease.
- Chest pain types 1 and 2 show markedly higher disease rates (81.6% and 78.3%) compared to type 0 (27.7%) — the strongest indicator in this dataset.
- The number of major vessels affected (ca) shows a clear inverse relationship with disease rate, ranging from 74.6% at ca=0 down to 15.0% at ca=3.
- Patients without exercise-induced angina show a notably higher disease rate (68.8%) than those with angina (23.7%).
- Cholesterol, fasting blood sugar, and resting blood pressure show weaker-than-expected relationships with disease presence, suggesting these single-variable indicators should be treated with caution in isolation.

**Recommendation:** Prioritize chest pain characteristics and vessel-imaging findings alongside traditional risk factors when screening for heart disease, rather than relying on cholesterol or blood pressure alone.

## How to Run
1. Clone this repository
2. **Python:** Install required libraries and run the notebook
   ```
   pip install pandas numpy matplotlib seaborn
   ```
3. **SQL:** Import the cleaned CSV into SQL Server as a table named `HeartDisease`, then run the queries in `/sql`
4. **Power BI:** Open the `.pbix` file in `/powerbi` with Power BI Desktop
5. **Report & Presentation:** Find the written PDF report and Gamma presentation link under `/reports`
