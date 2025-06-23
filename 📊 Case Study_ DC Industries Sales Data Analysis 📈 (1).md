# 📊 SQL Data Warehouse (DWH) Project 

This repository showcases a comprehensive SQL Data Warehouse (DWH) project, focusing on data analytics principles from exploratory data analysis (EDA) to advanced analytics. The project aims to demonstrate data handling, transformation, and insightful reporting capabilities using SQL.

## 🏛️ Data Warehousing (DWH) 

This project centers around the fundamental principles and practical implementation of a Data Warehouse using SQL. A Data Warehouse serves as a central repository of integrated data from one or more disparate sources, used for reporting and data analysis. It is a core component of business intelligence, providing a historical, consolidated view of data to support decision-making.

In this project, the DWH plays a crucial role by:

-   **Consolidating Data:** Integrating data from various operational systems into a single, unified schema, ensuring data consistency and reliability.
-   **Historical Data Storage:** Maintaining a historical record of data, enabling trend analysis and time-series comparisons that are not typically possible with transactional systems.
-   **Optimizing for Analytics:** Structuring data in a way that is optimized for complex analytical queries and reporting, rather than transactional processing.
-   **Supporting Business Intelligence:** Providing a clean, transformed, and ready-to-use dataset for various analytical tasks, from basic reporting to advanced analytics and machine learning.

The implementation within this repository focuses on defining star schemas, creating fact and dimension tables, and developing ETL (Extract, Transform, Load) processes using SQL scripts to populate the DWH. This structured approach ensures that the data is not only accessible but also meaningful and performant for analytical purposes.


### Exploratory Data Analysis (EDA)

1.  **Database Exploration:** Understanding the schema and initial data structure.
2.  **Dimensions Exploration:** Analyzing categorical data and their unique values.
3.  **Date Exploration:** Investigating temporal trends and patterns within the data.
4.  **Measures Exploration:** Examining key numerical metrics and their distributions.
5.  **Magnitude:** Understanding the scale and impact of various data points.
6.  **Ranking:** Identifying top N or bottom N entities based on specific criteria.

### Advanced Analytics

7.  **Change-Over-Time Trends:** Analyzing how data evolves over different periods.
8.  **Cumulative Analysis:** Calculating running totals and cumulative sums.
9.  **Performance Analysis:** Evaluating efficiency and effectiveness of processes or entities.
10. **Part-to-Whole (Proportional):** Understanding the contribution of individual parts to a total.
11. **Data Segmentation:** Dividing data into meaningful groups for targeted analysis.
12. **Reporting:** Presenting findings through structured reports and dashboards.

## 📁 Repository Structure

-   `EDA/`: Contains scripts and queries related to Exploratory Data Analysis.
-   `datasets/`: Stores the raw or processed datasets used in the project.
-   `docs/`: design documents.
-   `scripts/`: Includes SQL scripts for DWH creation, ETL processes, and advanced queries.


## 🛠️ Technologies Used

-   **SQL:** The primary language used for database interactions, DWH creation, and data manipulation.

## 🚀 Getting Started

To explore or replicate this project:

1.  Clone the repository to your local machine:
    ```bash
    git clone https://github.com/naira24/SQL-DWH.git
    ```
2.  Navigate to the cloned directory:
    ```bash
    cd SQL-DWH
    ```
3.  Explore the `scripts/` folder for DWH creation and data loading scripts.
4.  Refer to the `EDA/` folder for exploratory analysis queries.
5.  The `datasets/` folder contains the necessary data files.

## 📄 License

This project is licensed under the MIT License - see the `LICENSE` file for details.
