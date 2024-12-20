# Week 1: Setting Up and Data Understanding

## 📋 Objectives
The goal for this week is to set up the project by:
1. Understanding the data structure using the provided ERD.
2. Exploring and cleaning data using SQL.
3. Preparing the dataset for further analysis in subsequent weeks.

---

## 🛠️ Deliverables
1. **Entity-Relationship Diagram (ERD)**:
   - The ERD outlines the relationships between the main entities: `SalesRep`, `Channels`, `Sales_Main`, and `Products`.

2. **SQL Script**:
   - The SQL file (`sql_week_7.sql`) contains queries for:
     - Data exploration (e.g., checking nulls, outliers).
     - Initial cleaning (e.g., handling duplicates, ensuring referential integrity).

---

## 📂 Data Schema
### **Main Tables**
1. **SalesRep**:
   - `SalesRepID`, `SalesRepName`, `Manager`, `SalesTeam`.

2. **Channels**:
   - `ChannelID`, `Channel`, `[Sub-channel]`.

3. **Sales_Main**:
   - `SalesID`, `Distributor`, `CustomerName`, `City`, `Country`, `Latitude`, `Longitude`, `ProductID`, `ChannelID`, `Channel`, `[Product Name]`, `Quantity`, `Price`, `Sales`, `Month`, `Year`, `SalesRepID`, `Manager`.

4. **Products**:
   - `ProductID`, `[Product Name]`, `[Product Class]`.

---

## 🛠️ How to Use
1. Open the ERD file (`ERD.pdf`) for a visual understanding of the schema.
2. Run the SQL script (`sql_week_7.sql`) to explore and clean the data.
3. Ensure database relationships match the schema for accurate querying.

---

## 📧 Contact
For inquiries, feel free to reach out at your.email@example.com.
