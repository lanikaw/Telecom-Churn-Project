/*
Telecommunications Customer Churn Data Exploration 

*/

--Check for duplicate customer IDs

SELECT Customer_ID, COUNT( Customer_ID ) as count
FROM `gentle-nuance-404020.TelecomChurn.Churn`
GROUP BY Customer_ID
HAVING count(Customer_ID) > 1

--Find total number of customers
SELECT COUNT(DISTINCT Customer_ID) AS customer_count
FROM `gentle-nuance-404020.TelecomChurn.Churn`

--Count how many customers joined in the last quarter

SELECT COUNT(Customer_Status)
FROM `gentle-nuance-404020.TelecomChurn.Churn` 
WHERE Customer_Status='Joined' AND Tenure_in_Months<4

--Count how many customers churned in the last quarter

SELECT COUNT(Customer_Status)
FROM `gentle-nuance-404020.TelecomChurn.Churn` 
WHERE Customer_Status='Churned' AND Tenure_in_Months<4

--How much revenue was lost to churned customers?

SELECT Customer_Status, COUNT(Customer_ID) AS customer_count,
ROUND((SUM(Total_Revenue) * 100.0) / SUM(SUM(Total_Revenue)) OVER(), 1) AS Revenue_Percentage 
FROM `gentle-nuance-404020.TelecomChurn.Churn`
GROUP BY Customer_Status

--How old were churners?
SELECT  Age,
    CASE
        WHEN Age <= 30 THEN '19 - 30 yrs'
        WHEN Age <= 40 THEN '31 - 40 yrs'
        WHEN Age <= 50 THEN '41 - 50 yrs'
        WHEN Age <= 60 THEN '51 - 60 yrs'
        ELSE  '> 60 yrs'
    END AS Age_group,
    ROUND(COUNT(Customer_ID) * 100 / SUM(COUNT(Customer_ID)) OVER(), 1) AS Churn_Percentage
FROM `gentle-nuance-404020.TelecomChurn.Churn`
WHERE Customer_Status = 'Churned'
GROUP BY Age,
    CASE
        WHEN Age <= 30 THEN '19 - 30 yrs'
        WHEN Age <= 40 THEN '31 - 40 yrs'
        WHEN Age <= 50 THEN '41 - 50 yrs'
        WHEN Age <= 60 THEN '51 - 60 yrs'
        ELSE  '> 60 yrs'
    END
ORDER BY
Churn_Percentage DESC

--What gender were churners?

SELECT
    Gender,
    ROUND(COUNT(Customer_ID) *100.0 / SUM(COUNT(Customer_ID)) OVER(), 1) AS Churn_Percentage
FROM `gentle-nuance-404020.TelecomChurn.Churn`
WHERE
    Customer_Status = 'Churned'
GROUP BY
    Gender
ORDER BY
Churn_Percentage DESC;

--Do churners have internet service?

SELECT
    Internet_Service,
    ROUND(COUNT(Customer_ID) * 100.0 / SUM(COUNT(Customer_ID)) OVER(), 1) AS Churned
FROM `gentle-nuance-404020.TelecomChurn.Churn`
WHERE Customer_Status = 'Churned'
GROUP BY Internet_Service

--do churners have phone service?

SELECT
    Phone_Service,
    ROUND(COUNT(Customer_ID) * 100.0 / SUM(COUNT(Customer_ID)) OVER(), 1) AS Churned
FROM `gentle-nuance-404020.TelecomChurn.Churn`
WHERE Customer_Status = 'Churned'
GROUP BY Phone_Service

--What is the churn percentage of customers based on their tenure?

SELECT
  ROUND(COUNT(Customer_ID) * 100.0 / SUM(COUNT(Customer_ID)) OVER(),1) AS Churn_Percentage,
    CASE 
        WHEN Tenure_in_Months <= 6 THEN '6 months'
        WHEN Tenure_in_Months <= 12 THEN '1 Year'
        WHEN Tenure_in_Months <= 24 THEN '2 Years'
        ELSE '> 2 Years'
    END AS Tenure,
FROM
`gentle-nuance-404020.TelecomChurn.Churn`
WHERE Customer_Status = 'Churned'
GROUP BY Tenure,
CASE
      WHEN Tenure_in_Months <= 6 THEN '6 months'
      WHEN Tenure_in_Months <= 12 THEN '1 Year'
      WHEN Tenure_in_Months <= 24 THEN '2 Years'
      ELSE '> 2 Years'
    END
ORDER BY Churn_Percentage DESC

--What was the main reason customers left the company?

SELECT 
  Churn_Category,
  ROUND(COUNT(Customer_ID) * 100.0 / SUM(COUNT(Customer_ID)) OVER(),1) AS Churn_Percentage
FROM `gentle-nuance-404020.TelecomChurn.Churn`
WHERE Customer_Status = 'Churned'
GROUP BY Churn_Category
ORDER BY Churn_Percentage DESC

--What are the top 5 reasons they left?

SELECT 
  Churn_Category,
  Churn_Reason,
  ROUND(COUNT(Customer_ID) * 100.0 / SUM(COUNT(Customer_ID)) OVER(),1) AS Churn_Percentage
FROM `gentle-nuance-404020.TelecomChurn.Churn`
WHERE Customer_Status = 'Churned'
GROUP BY Churn_Category, Churn_Reason
ORDER BY Churn_Percentage DESC
LIMIT 5

--Did the majority of churned customers have premium technical support? 

SELECT 
    Premium_Tech_Support,
    COUNT(Customer_ID) AS Churned,
    ROUND(COUNT(Customer_ID) *100.0 / SUM(COUNT(Customer_ID)) OVER(),1) AS Churn_Percentage
FROM `gentle-nuance-404020.TelecomChurn.Churn`
WHERE Customer_Status = 'Churned'
GROUP BY Premium_Tech_Support
ORDER BY Churned DESC

--Were churners recieving any promotional offers to incentivize them to keep their service?
  
SELECT 
    OFFER,
    COUNT(Customer_ID) AS Churned,
    ROUND((COUNT(Customer_ID) * 100.0) / SUM(COUNT(Customer_ID)) OVER(), 1) AS Churn_Percentage
FROM `gentle-nuance-404020.TelecomChurn.Churn`
WHERE Customer_Status = 'Churned'
GROUP BY Offer
ORDER BY Churned DESC

--What kind of contract were churned customers on?
  
SELECT 
    Contract,
    COUNT(Customer_ID) AS Churned,
    ROUND(COUNT(Customer_ID) *100.0 / SUM(COUNT(Customer_ID)) OVER(),1) AS Churn_Percentage
FROM `gentle-nuance-404020.TelecomChurn.Churn`
WHERE Customer_Status = 'Churned'
GROUP BY Contract
ORDER BY Churned DESC
