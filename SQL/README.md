**Digital Library Management System (SQL)**

**Project Description**

This project is a Library Management System implemented using SQL.
It helps track students, books, and issued records, and provides useful insights like overdue books and popular categories.

**Objective**

To design a relational database and perform queries to manage and analyze library data efficiently.

**Database Structure**

**1. Students Table**

Stores student details:

stud_id (Primary Key), 
stud_name

**2. Books Table**

Stores book details:

Book_id (Primary Key), 
Title, 
Category

**3. IssuedBooks Table**

Stores issue/return records:

Issue_id (Primary Key), 
stud_id (Foreign Key), 
Book_id (Foreign Key), 
Issue_date, 
Return_date

**Features**

Track issued and returned books, 
Identify overdue books (more than 14 days), 
Analyze most borrowed book categories, 
Remove inactive students (no activity in last 3 years)

**Concepts Used**

DDL (CREATE TABLE), 
DML (INSERT, DELETE), 
JOIN operations, 
Aggregate functions (COUNT), 
Date functions (DATEDIFF, DATE_SUB), 
GROUP BY and ORDER BY, 
Foreign Key constraints

**Tools Used**

MySQL / MySQL Workbench, 
SQL
