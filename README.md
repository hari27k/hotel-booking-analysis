# 🏨 Hotel Booking Analytics

## About the Project

Hotel Booking Analytics is a data analysis project focused on understanding hotel booking behaviour, cancellation patterns, customer segments, pricing, and country-wise booking activity.

The project takes the hotel booking dataset through different stages of data preparation, analysis, database querying, spreadsheet reporting, and dashboard visualization.

---

## 🎯 Project Objectives

- Understand overall hotel booking behaviour
- Analyse booking and cancellation patterns
- Compare City Hotel and Resort Hotel
- Study customer types and ADR
- Examine the relationship between lead time and cancellations
- Identify countries with the highest completed bookings
- Present the results using Excel and Power BI

---

## 🔄 Project Workflow

Raw Booking Data
        ↓
Python & Pandas
        ↓
Data Cleaning & Transformation
        ↓
PostgreSQL Analysis
        ↓
Excel Reporting
        ↓
Power BI Dashboard

A separate web-scraping stage is also included to collect tourism-related information.

---

## 🐍 Python & Pandas

Python and Pandas are used to prepare and analyse the hotel booking dataset.

The work includes:

- Loading the dataset
- Understanding the dataset structure
- Checking missing values
- Removing duplicate records
- Cleaning inconsistent values
- Creating derived columns
- Performing basic statistical analysis

### Created Fields

- `Total_Guests`
- `Stay_Nights`
- `Booking_Status`

The final cleaned data is stored in:

`cleaned_dataset.csv`

---

## 🌐 Web Scraping

Tourism-related information is collected from an external web source using Python.

Technologies used:

- Requests
- BeautifulSoup
- Pandas

The collected information is stored in:

`scraped_data.csv`

The scraping code is available in:

`tourism_scraping.ipynb`

---

## 🗄️ SQL Analysis

PostgreSQL is used to analyse the cleaned booking data and answer important business questions.

The SQL analysis covers:

1. Hotel with the highest cancellation percentage
2. Months with the highest booking volume
3. Average ADR by customer type
4. Relationship between lead time and cancellation
5. Top 5 countries based on completed bookings

The queries are available in:

`sql_queries.sql`

---

## 📊 Excel Analysis

Microsoft Excel is used for additional analysis and reporting.

The workbook contains:

- Booking summaries
- Hotel-wise analysis
- Booking status analysis
- Average ADR analysis
- Cancellation-rate analysis
- Pivot tables
- Conditional formatting
- Monthly booking trend

Excel file:

`analysis.xlsx`

---

## 📈 Power BI Dashboard

The final results are presented using an interactive Power BI dashboard.

The dashboard focuses on:

- Total bookings
- Successful bookings
- Cancellation rate
- Average ADR
- Average stay duration
- Monthly booking trends
- Hotel comparison
- Customer type analysis
- Country-wise bookings
- Lead-time cancellation patterns

Power BI file:

`dashboard.pbix`

---

## 🔎 Key Results

The cleaned dataset contains 87,389 hotel bookings.

The analysis highlights several important patterns:

- City Hotel has the larger share of bookings
- Cancellation behaviour differs between hotel types
- August has a high booking volume
- Transient customers have the highest average ADR
- Lead time can be examined as an indicator of cancellation risk

---

## 🛠️ Technologies Used

- Python
- Pandas
- Requests
- BeautifulSoup
- PostgreSQL
- pgAdmin
- Microsoft Excel
- Power BI
- GitHub

---

## 👥 Team

### Stormbreaker

**Team Lead:** S Hari krishnaa

**Team Members:**

- gotham kumar
- hemanth

---

## 📁 Repository Contents

```text
analysis.ipynb
tourism_scraping.ipynb
cleaned_dataset.csv
scraped_data.csv
sql_queries.sql
analysis.xlsx
dashboard.pbix
project_summary.pdf
README.md
