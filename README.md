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

This means 27% of customers churned, compared to 73% that kept their service.

Next, I looked into how much it cost the company to lose these customers. They lost 17% of their revenue to those churned customers.
  
<img width="293" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/3914232c-1b06-4a85-a375-5ccbd9c61c76">


**1. What is the customer profile for a customer that churned, joined, and stayed? Are they different?**

To look into this, I first grouped customers by their tenure.
 
 <img width="153" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/2dac61a8-610c-4bfa-a010-ba06b04bc73d">

Most of the churn customers (49%) Left the company before 6 months. That means that they could be focusing on retention programs marketed towards new customers, so they could be incentivized to keep their accounts.

**2. What seem to be the key drivers of customer churn?**

<img width="189" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/d9c57f56-bbc1-4eca-8a8f-ebb0345493da">

When we look at the individual churn categories, 45% of customers left for a competitor. 

**3. What were the top reasons they stated for leaving?**

<img width="334" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/a77f8b02-3403-4b9e-8a17-f9c4967113a4">

The highest percentage of people left because the competitor had better devices or made a better offer.

**4. Did the majority of churned customers have premium technical support?**

<img width="274" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/7f097f2c-944e-466a-9f51-aed2599c5d64">

#No, 77% of churned customers did not have premium tech support, this could be a reason why they did not stay. 

**5. Were churners recieving any promotional offers to incentivize them to keep their service?**

<img width="195" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/25b3b8d9-67ab-4b5c-8387-9bf8e37d7f16">

56% of churners did not receive any promotional offers. 23% received 'Offer E'

**6 What kind of contract were churned customers on?**

<img width="240" alt="image" src="https://github.com/lanikaw/Telecom-Churn-Project/assets/160637642/cb84b318-bea7-489e-aa3d-e6db3a8ec209">

89% of churners are on month-to-month contracts

**The key drivers of customer churn are:**
1. 89% of churners are on month-to-month contracts, which means it is probably easier for them to terminate their service without       
     incurring fees.
2. 77% of churned customers did not have premium technical support
3. 56% of churners did not recieve any promotional offers

## Insights
1. 27% of the company's 7043 customers churned
2. 49% of those churned customers left before 6 months
3. The company has lost the largest percentage of its customers to competitors who either had better devices, or made better offers
4. 77% of churned customers were not provided with premium technical support

## Customer Retention Programs
1. Improve devices: One of the top resasons for churn is that competitors had better devices, so the company could evaluate their devices to make sure they are up to standard, and have competitive features.
2. Loyalty Programs: Tenured customers are less likely to churn than new customers. And the other top reason for churn competitors making better offers, so the company could implement different loyalty programs to retain their new customers. For example, they could incentivize customers to sign up for year long contracts and recieve a discounted rate. They could also reward customers on long-term contracts with free upgrades or additional benefits.
3. Improve Tech Support: 77% of churners did not recieve premium technical support, so the company could invest in hiring technical support staff ad offering it to all customers.
4. Develop a positive relationship with customers: Schedule regular check-ins with customers to ensure they are still satisfied with their service. These check-ins could be in the form of surveys, phone calls, or email communications.
