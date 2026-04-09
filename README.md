# Sozo Foundation Database System

## Overview

This project involves the design and implementation of a relational database system for The Sozo Foundation, a non-profit organisation based in South Africa.

The system is designed to manage learners, programs, enrollments, attendance, staff, volunteers, and feedback, providing a structured and efficient way to store and retrieve organisational data.


## Technologies Used

* Microsoft SQL Server
* T-SQL (Transact-SQL)


## Features

### Database Design

* Fully relational database structure
* Primary and foreign key relationships
* Data normalization (up to Third Normal Form - 3NF)

### Functionality

* Stored procedures for handling operations such as enrollment and attendance
* Triggers for automated system responses
* Views for simplified and structured data access

### Security

* Role-based access control
* User and login management
* Permissions assigned to different roles

### Data Handling

* Sample data included for testing
* Realistic dataset representing organisational operations


## Project Structure

database/
├── 01_database_setup.sql
├── 02_tables.sql
├── 03_views.sql
├── 04_procedures.sql
├── 05_triggers.sql
├── 06_security.sql
├── 07_sample_data.sql


## How to Run

1. Open SQL Server Management Studio (SSMS)
2. Execute the scripts in order  
3. Test the database using queries or stored procedures


## Key Concepts Applied

* Entity-Relationship Design (ERD)
* Data Normalization
* Referential Integrity
* Database Security and Permissions
* Query Structuring and Optimization


## Contribution

This project was developed as part of a group assignment. I contributed to the design, development, and implementation of the database system alongside my team.
