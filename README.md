# Telecom-Churn-Project

In this data exploration, I will be looking at churn data for a fictional Telecommunications company that provides phone and internet services to 7,043 customers in California, and includes details about customer demographics, location, services, and current status.

My job as a data analyst is to deep dive into the relevant customer data to predict behavior and develop focused customer retention programs.

## Process
I downloaded the data set, performed all of the analysis using SQL in BigQuery, then visualized my findings in Tableau.

Next, I dived into the data to answer the question, why are customer's leaving the telecommunications company? Here are some further questions that will help my analysis.

**Questions**
1. What is the customer profile for a customer that churned, joined, and stayed? Are they different?
2. What seem to be the key drivers of customer churn?
3. What's the % of Churn Customers and customers that keep their service?
4. Are there any patterns/preferences in Churn Customers based on the type of service provided?
5. Which features and services are most profitable?
6. What can the company do to retain their customers?


## Analysis 

First, I checked for the total number of customers. There are 7043.

Then, I looked into how many customers churned. There are 1869.

Next, I looked into how much it cost the company to lose these customers. They lost 17% of their revenue to those churned customers.
  
<img width="293" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/3914232c-1b06-4a85-a375-5ccbd9c61c76">


**1. What is the customer profile for a customer that churned, joined, and stayed? Are they different?**

To look into this, I first grouped customers by their tenure.
 
 <img width="153" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/2dac61a8-610c-4bfa-a010-ba06b04bc73d">

Most of the churn customers (49%) Left the company before 6 months. That means that they could be focusing on retention programs marketed towards new customers, so they could be incentivized to keep their accounts.

**2. What seem to be the key drivers of customer churn?**

<img width="189" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/d9c57f56-bbc1-4eca-8a8f-ebb0345493da">

When we look at the individual churn categories, 45% of customers left for a competitor. 

**2b. What were the top reasons they stated for leaving?**

<img width="334" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/a77f8b02-3403-4b9e-8a17-f9c4967113a4">

The highest percentage of people left because the competitor had better devices or made a better offer.

**2c. Did the majority of churned customers have premium technical support?**

<img width="274" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/7f097f2c-944e-466a-9f51-aed2599c5d64">

#No, 77.4% of churned customers did not have premium tech support, this could be a reason why they did not stay. 



   





