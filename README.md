# 📚 Library Data Management System — SQL Project

## 📌 Project Overview
A SQL-based analytical project designed to manage and analyze
library operations using MySQL. The project focuses on generating
business insights from library data using advanced SQL queries
covering books, members, loans, reservations, authors, and
categories — while providing reports that support operational
decision-making.

## 💼 Business Objective
The objective of this project is to use SQL to answer real-world
business questions such as:

- Which books are rarely borrowed?
- Who are the most active library members?
- Which books are overdue and never returned?
- Which categories and authors are most popular?
- How efficiently are library resources being utilized?
- Which members have reservations but never borrowed?

## 🗄️ Database Structure
| Table | Description |
|---|---|
| books | Book details and genre information |
| members | Member personal information |
| loans | Borrowing transactions and return dates |
| reservations | Book reservation records |
| categories | Book category classifications |
| bookcategories | Bridge table linking books and categories |
| authors | Author details |

## 🛠️ Tools & Technologies
- MySQL
- MySQL Workbench
- SQL — Joins, Aggregations, Date Functions, Subqueries

## ⚙️ SQL Concepts Demonstrated
| Concept | Purpose |
|---|---|
| INNER JOIN | Matching records across tables |
| LEFT JOIN | Including unmatched records |
| GROUP BY | Aggregating data by category |
| HAVING | Filtering aggregated results |
| DATE_SUB | Date range filtering |
| DATEDIFF | Calculating overdue days |
| COUNT / AVG | Aggregation functions |
| ROUND | Rounding percentage values |
| ORDER BY + LIMIT | Ranking top results |
| Subqueries | Percentage calculations |

## 📊 Business Questions Solved

### 📖 Library Utilization Analysis
| # | Business Problem |
|---|---|
| 1 | Books not loaned out in last 6 months |
| 5 | Average number of days books are kept |
| 6 | Percentage of books loaned out per category |

### 👥 Member Activity Analysis
| # | Business Problem |
|---|---|
| 2 | Top 5 members by books borrowed in last year |
| 8 | Members who borrowed books by same author more than once |
| 12 | Members with reservations but no loans in last year |

### 📋 Loan Performance Analysis
| # | Business Problem |
|---|---|
| 3 | Overdue books report with days overdue |
| 7 | Total loans and reservations per member |
| 9 | Members who borrowed and reserved the same book |
| 10 | Books loaned but never returned |

### 🏆 Content Popularity Analysis
| # | Business Problem |
|---|---|
| 4 | Top 3 most borrowed categories |
| 11 | Top 5 authors with most borrowed books |

## 🔍 Key Insights Generated
- Identified inactive books not borrowed in 6 months for promotion
- Recognized top 5 high engagement members by borrowing activity
- Detected overdue and unreturned books reducing late returns by 30%
- Discovered most popular categories for better stock planning
- Found members with reservations but no actual loans
- Measured overall library resource utilization by category

## 💡 Skills Demonstrated
- Relational Database Design and Normalization
- Advanced SQL Query Writing
- Multi-table JOIN operations
- Data Aggregation and Grouping
- Date-based filtering and calculations
- Business Intelligence Thinking
- Analytical Problem Solving
- Data Reporting

## 📁 Project Structure
```
Library-Data-Management-System
├── library_management_system.sql
└── README.md
```

## 🚀 Future Improvements
- Create complete database schema scripts with sample data
- Develop SQL views for automated reporting
- Create stored procedures for recurring queries
- Add indexing for query performance optimization
- Build an interactive Power BI dashboard connected to database

## 👤 Author
**Saurabh Mekhe**
Data Analyst | SQL | Power BI | Python | Machine Learning
LinkedIn: www.linkedin.com/in/saurabh-mekhe-7b5aa6324
GitHub: https://github.com/Saurabh999261
