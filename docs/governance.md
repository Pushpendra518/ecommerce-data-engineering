# Data Governance

## What is Data Governance

Data Governance refers to the overall management of data availability, usability, integrity, and security within an organization.

It ensures that data is accurate, consistent, secure, and properly managed throughout its lifecycle.

The main goals of Data Governance are:

* Ensure high data quality
* Maintain data security and privacy
* Define clear ownership and responsibilities for data
* Ensure compliance with policies and regulations

Data governance helps organizations make reliable data-driven decisions.

---

## Data Lineage

Data lineage describes the complete lifecycle of data, including where the data originates, how it moves through systems, and how it is transformed before reaching its final destination.

For this project, the data lineage flow is:

Raw Dataset (CSV File)
↓
Data Cleaning (Handling missing values)
↓
Data Transformation (Standardizing product names, creating revenue category)
↓
Data Storage (Saving cleaned data in Parquet format)
↓
Data Warehouse / Analytical Queries
↓
Analytics & Reporting

Data lineage helps teams track data movement and ensures transparency in the data pipeline.

---

## Sensitive Data (PII)

The dataset contains the following identifier:

* **customer_id**

Although it does not directly reveal personal information such as name or email, it can still be considered a sensitive identifier because it uniquely represents a customer.

Such identifiers should be handled carefully to ensure privacy and security.

---

## Industry Tools for Data Governance

Several tools are used in the industry to manage data governance and metadata management.

Examples include:

* Apache Atlas
* Collibra
* AWS Glue Data Catalog
* Alation

These tools help organizations manage data catalogs, metadata, lineage tracking, and governance policies.

---

# Final Project Structure

```
data-engineering-assessment
│
├── data
│   ├── de_assessment_ecommerce_dataset.csv
│
├── notebooks
│
├── sql
│   ├── create_tables.sql
│   ├── queries.sql
│
├── pipeline
│   ├── transformation.py
│   ├── data_quality.py
│
├── docs
│   ├── governance.md
│
├── README.md
```

This structure organizes the project into logical components including data storage, SQL scripts, pipeline code, and documentation.
