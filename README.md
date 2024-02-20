# Telecom-Churn-Project

In this data exploration, I will be looking at churn data for a fictional Telecommunications company that provides phone and internet services to 7,043 customers in California, and includes details about customer demographics, location, services, and current status.

My job as a data analyst is to deep dive into the relevant customer data to predict behavior and develop focused customer retention programs.

## Process
I downloaded the data set, performed all of the analysis using SQL in BigQuery, then visualized my findings in Tableau.

Next, I dived into the data to answer the question, why are customer's leaving the telecommunications company? Here are some further questions that will help my analysis.

**Questions**
1. How many customers joined the company during the last quarter?
2. What is the customer profile for a customer that churned, joined, and stayed? Are they different?
3. What seem to be the key drivers of customer churn?
6. What's the % of Churn Customers and customers that keep their service?
7. Are there any patterns/preferences in Churn Customers based on the type of service provided?
8. Which features and services are most profitable?
9. What can the company do to retain their customers?

1. First, I checked for the total number of customers. There are 7043.
2. Then, I looked into how many customers churned. There are 1869.
3. Next, I looked into how much it cost the company to lose these customers. They lost 17% of their revenue to those churned customers.
   SELECT Customer_Status, COUNT(Customer_ID) AS customer_count,
    ROUND((SUM(Total_Revenue) * 100.0) / SUM(SUM(Total_Revenue)) OVER(), 1) AS Revenue_Percentage 
    FROM `gentle-nuance-404020.TelecomChurn.Churn`
    GROUP BY Customer_Status
   Customer_Status	customer_count	Revenue_Percentage
Stayed	4720	82.5
Churned	1869	17.2
Joined	454	0.3<img width="293" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/3914232c-1b06-4a85-a375-5ccbd9c61c76">

