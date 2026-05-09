select count(*) from [dbo].[transaction]

select * from [dbo].[transaction]

-- CHECK DATA

SELECT TOP 10 *
FROM [dbo].[transaction]

-- TOTAL TRANSACTIONS

SELECT COUNT(*) AS total_transactions
FROM [dbo].[transaction]

-- TOTAL FRAUD TRANSACTIONS

SELECT COUNT(*) AS total_frauds
FROM [dbo].[transaction]
WHERE isFraud = 1

-- FRAUD PERCENTAGE

SELECT 
    ROUND(
        (SUM(CASE WHEN isFraud = 1 THEN 1 ELSE 0 END) * 100.0)
        / COUNT(*),
    2) AS fraud_percentage
FROM [dbo].[transaction]

-- FRAUD BY TRANSACTION TYPE

SELECT 
    type,
    COUNT(*) AS total_transactions,
    SUM(isFraud) AS fraud_cases
FROM [dbo].[transaction]
GROUP BY type
ORDER BY fraud_cases DESC

---- FRAUD RATE BY TYPE

SELECT 
    type,
    AVG(CAST(isFraud AS FLOAT)) * 100 AS fraud_rate
FROM [dbo].[transaction]
GROUP BY type
ORDER BY fraud_rate DESC;

-- HIGH RISK TRANSACTIONS

SELECT TOP 20 *
FROM [dbo].[transaction]
WHERE amount > 200000
AND isFraud = 1
ORDER BY amount DESC;

----- TOP FRAUD USERS

SELECT TOP 10
    nameOrig,
    COUNT(*) AS fraud_count
FROM [dbo].[transaction]
WHERE isFraud = 1
GROUP BY nameOrig
ORDER BY fraud_count DESC

---- TOP RECEIVERS

SELECT TOP 10
    nameDest,
    COUNT(*) AS total_received_transactions
FROM [dbo].[transaction]
GROUP BY nameDest
ORDER BY total_received_transactions DESC

-- SUSPICIOUS TRANSACTIONS
-- (ZERO BALANCE AFTER TRANSFER)

SELECT *
FROM [dbo].[transaction]
WHERE oldbalanceOrg > 0
AND newbalanceOrig = 0
AND type IN ('TRANSFER', 'CASH_OUT')

----- TRANSFER & CASH OUT ANALYSIS
SELECT 
    type,
    COUNT(*) AS total_transactions,
    SUM(isFraud) AS fraud_transactions
FROM [dbo].[transaction]
WHERE type IN ('TRANSFER', 'CASH_OUT')
GROUP BY type

---- AVERAGE TRANSACTION AMOUNT BY TYPE

SELECT
    type,
    AVG(amount) AS avg_transaction_amount
FROM [dbo].[transaction]
GROUP BY type
ORDER BY avg_transaction_amount DESC

---- BALANCE ANALYSIS

SELECT
    type,
    AVG(oldbalanceOrg) AS avg_old_balance,
    AVG(newbalanceOrig) AS avg_new_balance
FROM [dbo].[transaction]
GROUP BY type

---- HIGH VALUE FRAUD TRANSACTIONS

SELECT *
FROM [dbo].[transaction]
WHERE amount > (
    SELECT AVG(amount)
   FROM [dbo].[transaction]
)
AND isFraud = 1
ORDER BY amount DESC

-- FRAUD TREND OVER TIME

SELECT
    step,
    COUNT(*) AS fraud_count
 FROM [dbo].[transaction]
WHERE isFraud = 1
GROUP BY step
ORDER BY step

-- FLAGGED FRAUD CHECK

SELECT
    isFlaggedFraud,
    COUNT(*) AS total_cases
 FROM [dbo].[transaction]
GROUP BY isFlaggedFraud

-- CORRELATION SUPPORT QUERY

SELECT
    type,
    AVG(amount) AS avg_amount,
    AVG(oldbalanceOrg) AS avg_old_balance,
    AVG(newbalanceOrig) AS avg_new_balance,
    AVG(oldbalanceDest) AS avg_old_dest_balance,
    AVG(newbalanceDest) AS avg_new_dest_balance
 FROM [dbo].[transaction]
GROUP BY type;

-- FINAL DATASET CHECK

SELECT TOP 100 *
 FROM [dbo].[transaction]



