***Data Analyst Assignment***

## 📌 Project Overview

This project demonstrates end-to-end **Data Analysis skills** using:

* SQL (data extraction & queries)
* Python (data cleaning & processing)
* Excel / Google Sheets (data analysis & visualization)

The assignment includes working with **ticket and feedback datasets** to generate insights.

---

## 🛠️ Tools & Technologies Used

* 💻 VS Code
* 🐍 Python
* 🗄️ SQLite (SQLTools)
* 📊 Microsoft Excel / Google Sheets
* 🔧 Git & GitHub

---

## 📂 Project Structure

```
Data_Analyst_Assignment/
│
├── SQL/
│   ├── Clinic_Schema_setup.sql
│   ├── Clinic_Queries.sql
│   ├── Hotel_Schema_Setup.sql
│   └── Hotel_Queries.sql
│
├── Python/
│   ├── Remove_Duplicates.py
│   └── Time_Converter.py
│
├── Spreadsheets/
│   └── Ticket_Analysis.xlsx
│
└── README.md
```

---

## 🔍 Tasks Performed

### ✅ 1. SQL Analysis

* Created database schema for clinic & hotel data
* Wrote queries for:

  * Data retrieval
  * Filtering
  * Aggregation
  * Joins

---

### ✅ 2. Python Data Processing

* Removed duplicate records
* Converted date/time formats
* Prepared clean data for analysis

---

### ✅ 3. Spreadsheet Analysis (Excel)

#### 🔹 Data Preparation

* Created two sheets:

  * `ticket`
  * `feedbacks`

#### 🔹 Data Mapping

* Used **VLOOKUP / INDEX-MATCH** to fetch:

  * `ticket_created_at` into feedbacks sheet

#### 🔹 Time-Based Analysis

Created helper columns:

* **Same Day**

```excel
=IF(INT(B2)=INT(C2),1,0)
```

* **Same Hour**

```excel
=IF(AND(INT(B2)=INT(C2),HOUR(B2)=HOUR(C2)),1,0)
```

---

#### 🔹 Pivot Table Analysis

* Rows → `outlet_id`
* Values →

  * Sum of Same Day
  * Sum of Same Hour

👉 Output gives:

* Count of tickets closed on same day
* Count of tickets closed within same hour

---

## 📈 Key Insights

* Identified how many tickets were resolved quickly
* Compared performance across outlets
* Analyzed response efficiency using time metrics

---

## 🚀 How to Run the Project

### SQL

* Open `.sql` files in VS Code (SQLTools)
* Run queries on SQLite database

### Python

```bash
python filename.py
```

### Excel

* Open `Ticket_Analysis.xlsx`
* View Pivot Tables and formulas

---

## 🔗 GitHub Repository

👉 https://github.com/sai-supraja48/data-analyst-assignment

---

## ⭐ Conclusion

This project showcases:

* Data cleaning
* SQL querying
* Spreadsheet analysis
* Real-world problem solving

---

✨ *Thank you!*
