🏨 Hotel Booking Analytics
About the Project
Hotel Booking Analytics is a data analysis project focused on understanding how hotel bookings behave and where cancellations and revenue-related patterns appear.
The project takes the booking dataset through several stages — preparation, analysis, database queries, spreadsheet reporting, and dashboard visualization.
---
🎯 Project Objectives
Understand overall hotel booking behaviour
Study booking and cancellation patterns
Compare City Hotel and Resort Hotel
Analyse customer types and ADR
Examine the effect of booking lead time on cancellations
Identify countries with the most completed bookings
Present the findings through Excel and Power BI
---
🔄 Project Workflow
```text
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
```
A separate web-scraping step is also used to collect tourism-related information.
---
🐍 Python & Pandas
Python is used as the main data preparation tool.
The analysis includes:
Loading the hotel booking dataset
Inspecting columns and data types
Checking missing values
Removing duplicate records
Cleaning inconsistent values
Creating useful derived columns
Performing basic statistical analysis
Created Fields
`Total_Guests`
`Stay_Nights`
`Booking_Status`
The cleaned dataset is saved as:
`cleaned_dataset.csv`
---
🌐 Web Scraping
Tourism information is collected from an external web source using:
Python
Requests
BeautifulSoup
Pandas
The extracted information is stored in:
`scraped_data.csv`
The scraping work is available in:
`tourism_scraping.ipynb`
---
🗄️ SQL Analysis
PostgreSQL is used to answer the main business questions.
The SQL analysis covers:
Hotel with the highest cancellation percentage
Months with the highest booking volume
Average ADR for each customer type
Relationship between lead time and cancellation
Top 5 countries based on completed bookings
The queries are available in:
`sql_queries.sql`
---
📊 Excel Analysis
Excel is used to create summaries and supporting analysis.
The workbook includes:
Booking summaries
Hotel-wise analysis
Booking status analysis
Average ADR analysis
Cancellation-rate analysis
Pivot tables
Conditional formatting
Monthly booking trend
File:
`analysis.xlsx`
---
📈 Power BI Dashboard
The final analysis is presented through an interactive Power BI dashboard.
The dashboard focuses on:
Total bookings
Successful bookings
Cancellation rate
Average ADR
Average stay duration
Monthly booking trends
Hotel comparison
Customer type analysis
Country-wise bookings
Lead-time cancellation patterns
File:
`dashboard.pbix`
---
🔎 Key Results
The analysis contains 87,389 bookings in the cleaned dataset.
The project identifies several useful patterns, including:
City Hotel contributes the larger share of bookings
Cancellation behaviour differs between hotel types
August is a high-volume booking month
Transient customers have the highest average ADR
Booking lead time can be examined as an indicator of cancellation risk
---
🛠️ Technologies Used
Technology	Purpose
Python	Data preparation and analysis
Pandas	Data manipulation
Requests	Web requests
BeautifulSoup	Web scraping
PostgreSQL	SQL-based analysis
pgAdmin	Database management
Microsoft Excel	Spreadsheet analysis
Power BI	Interactive visualization
GitHub	Project version control
---
👥 Team
Stormbreaker
Team Lead: S Hari krishnaa
Team Members:
gotham kumar
hemanth
---
📁 Repository Contents
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
```
---
📌 Conclusion
This project combines multiple data-analysis techniques to transform hotel booking data into practical business insights.
By connecting Python, web scraping, SQL, Excel, and Power BI, the project provides a complete workflow from raw data preparation to visual reporting.
