# 📚 Library Data Management System — SQL Project

## 📌 Project Overview

A SQL-based analytical project designed to manage and analyze library operations using MySQL. The project focuses on generating business insights from library data through advanced SQL queries involving books, members, loans, reservations, authors, and categories, helping support operational and data-driven decision-making.

---

## 🎯 Business Objective

The objective of this project is to use SQL to answer real-world business questions such as:

* Which books are rarely borrowed?
* Who are the most active library members?
* Which books are overdue or have not been returned?
* Which book categories and authors are most popular?
* How efficiently are library resources being utilized?
* Which members have reservations but did not borrow books?

---

## 🗄️ Database Structure

| Table          | Description                               |
| -------------- | ----------------------------------------- |
| books          | Book details and publication information  |
| members        | Member information                        |
| loans          | Borrowing transactions and return dates   |
| reservations   | Book reservation records                  |
| categories     | Book category details                     |
| bookcategories | Bridge table linking books and categories |
| authors        | Author information                        |

---

## 🛠️ Tools & Technologies

* MySQL
* MySQL Workbench
* SQL
* Joins
* Aggregate Functions
* Date Functions
* Subqueries

---

## ⚙️ SQL Concepts Demonstrated

| SQL Concept      | Purpose                                 |
| ---------------- | --------------------------------------- |
| INNER JOIN       | Retrieve matching records across tables |
| LEFT JOIN        | Include unmatched records               |
| GROUP BY         | Aggregate data by categories or members |
| HAVING           | Filter aggregated results               |
| DATE_SUB         | Perform date range filtering            |
| DATEDIFF         | Calculate overdue duration              |
| COUNT / AVG      | Aggregate calculations                  |
| ROUND            | Round calculated values                 |
| ORDER BY + LIMIT | Rank top-performing results             |
| Subqueries       | Solve complex analytical questions      |

---

## 📊 Business Questions Solved

### 📖 Library Utilization Analysis

* Books not borrowed in the last six months
* Average number of days books are kept before return
* Percentage of books borrowed by category

### 👥 Member Activity Analysis

* Top five members by borrowing activity
* Members who borrowed books by the same author multiple times
* Members with reservations but no loans during the last year

### 📋 Loan Performance Analysis

* Overdue books report with overdue duration
* Total loans and reservations for each member
* Members who borrowed and reserved the same book
* Books that were borrowed but never returned

### 🏆 Content Popularity Analysis

* Top three most borrowed book categories
* Top five authors with the highest borrowing frequency

---

## 🔍 Key Insights

* Identified books that were not borrowed in the last six months for promotional opportunities.
* Recognized highly engaged members based on borrowing activity.
* Identified overdue and unreturned books to support library follow-up.
* Determined the most popular book categories for inventory planning.
* Found members with reservations but no borrowing activity.
* Measured library resource utilization across different categories.

---

## 💼 Business Value

* Helps librarians monitor borrowing trends and member activity.
* Supports inventory planning through category and author popularity analysis.
* Identifies overdue books for timely follow-up.
* Demonstrates how SQL can be used to solve real-world business problems through analytical reporting.

---

## 💡 Skills Demonstrated

* Relational Database Design
* Database Normalization
* Advanced SQL Query Writing
* Multi-table JOIN Operations
* Data Aggregation and Grouping
* Date-based Analysis
* Analytical Problem Solving
* Business Intelligence Thinking
* Reporting and Insights Generation

---

## 📁 Project Structure

```text
Library-Data-Management-System
│
├── library_management_system.sql
├── README.md
└── Dataset
```

---

## 🚀 Future Improvements

* Create complete database schema with sample data.
* Develop SQL Views for reusable reporting.
* Implement Stored Procedures for recurring business queries.
* Add indexes to improve query performance.
* Build an interactive Power BI dashboard connected to the database.

---

## 👤 Author

**Saurabh Mekhe**

**Data Analyst | SQL | Power BI | Python | Machine Learning**

* **LinkedIn:** https://www.linkedin.com/in/saurabh-mekhe-7b5aa6324
* **GitHub:** https://github.com/Saurabh999261
