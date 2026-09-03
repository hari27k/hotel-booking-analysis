# Hotel Booking Analytics

A data analysis project that explores hotel bookings, cancellations, customer behaviour, pricing, and booking trends.

## About

This project uses hotel booking data to find useful patterns related to:

- Bookings
- Cancellations
- Hotel types
- Customer types
- Average Daily Rate (ADR)
- Booking lead time
- Country-wise bookings

The analysis is carried out using Python, SQL, Excel, and Power BI.

## Project Workflow

1. Data preparation using Python and Pandas
2. Tourism data collection using BeautifulSoup
3. Business analysis using PostgreSQL
4. Report preparation using Excel
5. Dashboard creation using Power BI

## Python & Pandas

Python and Pandas are used to prepare the hotel booking dataset.

The work includes:

- Loading and inspecting the dataset
- Checking missing values
- Removing duplicate records
- Cleaning inconsistent data
- Creating additional columns
- Performing basic analysis

### Additional Columns

- `Total_Guests`
- `Stay_Nights`
- `Booking_Status`

Output file:

`cleaned_dataset.csv`

## Web Scraping

Tourism-related information is collected from an external website using Python.

Libraries used:

- Requests
- BeautifulSoup
- Pandas

The collected information is saved in:

`scraped_data.csv`

Scraping notebook:

`tourism_scraping.ipynb`

## SQL Analysis

PostgreSQL is used to answer the main business questions.

The analysis includes:

- Hotel with the highest cancellation percentage
- Monthly booking patterns
- Average ADR by customer type
- Lead time and cancellation analysis
- Top 5 countries based on completed bookings

SQL file:

`sql_queries.sql`

## Excel Analysis

Excel is used to create additional summaries and visual analysis.

The workbook contains:

- Pivot tables
- Booking summaries
- Cancellation analysis
- ADR analysis
- Conditional formatting
- Monthly booking trend

Excel file:

`analysis.xlsx`

## Power BI Dashboard

The Power BI dashboard presents the main findings in an interactive format.

It includes:

- Booking KPIs
- Cancellation analysis
- Monthly booking trends
- Hotel comparison
- Customer type analysis
- Country-wise booking analysis
- ADR analysis

Dashboard file:

`dashboard.pbix`

## Key Findings

The cleaned dataset contains 87,389 hotel bookings.

Some of the main observations are:

- City Hotel has the larger share of bookings
- Cancellation levels vary between hotel types
- August has a high booking volume
- Transient customers have the highest average ADR
- Lead time can be useful when studying cancellation behaviour

## Technologies Used

- Python
- Pandas
- Requests
- BeautifulSoup
- PostgreSQL
- pgAdmin
- Microsoft Excel
- Power BI
- GitHub

## Team

### Stormbreaker

**Team Lead:** S Hari krishnaa

**Team Members:**

- gotham kumar
- hemanth

## Files

| File | Description |
|---|---|
| `analysis.ipynb` | Main Python analysis |
| `tourism_scraping.ipynb` | Web scraping |
| `cleaned_dataset.csv` | Cleaned booking dataset |
| `scraped_data.csv` | Scraped tourism data |
| `sql_queries.sql` | SQL analysis queries |
| `analysis.xlsx` | Excel analysis |
| `dashboard.pbix` | Power BI dashboard |
| `project_summary.pdf` | Project summary |

## Conclusion

This project combines data cleaning, analysis, database queries, spreadsheet reporting, and visualization to understand hotel booking behaviour and cancellation patterns.
