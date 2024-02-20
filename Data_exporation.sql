/*
Telecommunications Customer Churn Data Exploration 

Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Converting Data Types

*/

--Checking which customer statuses are listed

SELECT Customer_Status
FROM `gentle-nuance-404020.TelecomChurn.Churn` 
GROUP BY Customer_Status

--Counting how many customers joined in the last quarter

SELECT COUNT(Customer_Status)
FROM `gentle-nuance-404020.TelecomChurn.Churn` 
WHERE Customer_Status='Joined' AND Tenure_in_Months=1

--Exploring correlation between customer churn and other variables
