# Financial Risk & Fraud Analysis

## Overview
This project focuses on analyzing financial transaction data to identify fraudulent and suspicious transaction patterns using Python, SQL Server, and Machine Learning techniques.

The project combines:
- Data Cleaning & Preprocessing
- Exploratory Data Analysis (EDA)
- Statistical & Fraud Analysis
- SQL-Based Risk Querying
- Feature Engineering
- Fraud Detection Modeling

The goal is to support data-driven fraud monitoring and financial risk assessment.

---

# Business Problem

Financial institutions process millions of transactions daily, making manual fraud detection difficult and inefficient.

Fraudulent activities can lead to:
- Financial losses
- Operational risk
- Reduced customer trust
- Regulatory concerns

This project aims to identify:
- High-risk transactions
- Fraud-prone transaction types
- Suspicious balance behaviors
- Anomalous transaction patterns

---

# Objectives

- Perform data cleaning and preprocessing on financial transaction datasets
- Conduct exploratory and statistical analysis
- Detect suspicious and potentially fraudulent transactions
- Build a fraud detection workflow using Machine Learning
- Use SQL for fraud analysis and transaction querying

---

# Tech Stack

- Python
- SQL Server
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- Joblib
- Power BI (Planned)

---

# Dataset Features

The dataset contains transaction-related information such as:

- Transaction Type
- Transaction Amount
- Sender & Receiver Details
- Account Balances
- Fraud Labels
- Flagged Fraud Indicators

---

# Project Workflow

## 1. Data Preprocessing
- Null value checking
- Data validation
- Feature selection
- Balance difference calculations

## 2. Exploratory Data Analysis
- Transaction distribution analysis
- Fraud percentage analysis
- Fraud trend analysis
- Transaction-type risk analysis
- Correlation analysis

## 3. Fraud & Risk Analysis
- Suspicious zero-balance transaction detection
- High-value fraud transaction analysis
- Fraud-prone transaction type identification
- Sender and receiver behavior analysis

## 4. SQL Analysis
SQL Server was used for:
- Fraud transaction querying
- Risk aggregation
- KPI generation
- Suspicious transaction extraction
- Transaction-type fraud analysis

## 5. Machine Learning
Implemented a Logistic Regression model using:
- StandardScaler
- OneHotEncoder
- Scikit-learn Pipeline

Model training included:
- Feature preprocessing
- Train-test splitting
- Fraud classification
- Model evaluation

---

# Key Insights

- TRANSFER and CASH_OUT transactions showed the highest fraud involvement
- Fraudulent transactions often resulted in abnormal balance behavior
- Fraud cases represented a very small percentage of overall transactions, creating class imbalance challenges
- High-value transactions carried greater fraud risk

---

# Model Used

## Logistic Regression
Used for binary fraud classification.

### Why Logistic Regression?
- Simple and interpretable
- Effective baseline model
- Suitable for fraud classification problems

---

# Future Enhancements

- Power BI Dashboard Integration
- Advanced Machine Learning Models
- Real-Time Fraud Detection
- Automated Risk Scoring System

---

# Project Structure

```bash
Financial-Risk-Fraud-Analysis/
│
├── dataset/
├── notebooks/
├── sql_queries/
├── fraud_detection_pipeline.pkl
├── README.md
└── requirements.txt
```

---

# Results

- Successfully identified suspicious transaction behaviors
- Performed fraud-risk analysis using SQL and Python
- Built a reusable fraud detection pipeline
- Generated actionable financial risk insights

---



```
