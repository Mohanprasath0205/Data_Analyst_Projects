# 🚀 My Journey Through the PwC Power BI Virtual Internship  
![PwC-Indias-7600-Job-Openings-Application-Details-Inside](https://github.com/user-attachments/assets/80ca251b-596e-4d2d-acaf-b21b19cd5978)


It all started with a **curiosity to learn** and a **passion for data**. When I came across the **PwC Power BI Virtual Internship** on Forage, I knew it was an opportunity I couldn’t miss.  

PwC, being one of the world's leading professional services firms, offered this program to help aspiring professionals like me **gain hands-on experience** in **Power BI**—a tool that turns raw data into powerful insights.  

As someone eager to break into the **data analytics field**, I saw this as a chance to not only enhance my **technical skills** but also understand how **top companies analyze and visualize data for decision-making**. So, I dived in! 💡  

---

##  A Structured Learning Experience  

The internship was divided into **four engaging tasks**, each designed to simulate real-world business scenarios. Here’s how my journey unfolded:  

### 📌 Task 1: Setting the Stage  

Before diving into data, PwC wanted to know what motivated me to take up this internship. I eagerly shared my thoughts—  

✔️ **Curiosity to learn** and explore the world of Power BI.  
✔️ **Excitement to work** on a project from a leading firm like PwC.  
✔️ **Expectations from the program**—gaining exposure to how professionals use data in decision-making.  
✔️ **Areas of improvement** I hoped to focus on in Power BI, such as **dashboard design** and **data storytelling**.  

This simple exercise helped me **set my intent for the internship** and made me even more excited for the journey ahead.  

---

# Task 2: 📞 Call Centre Trends Analysis – PhoneNow (PwC Power BI Virtual Internship)

As part of the **PwC Power BI Virtual Internship**, my first task involved **designing a performance dashboard** for **PhoneNow**, a telecommunications company. The objective was to create a **clear, insightful, and user-friendly** dashboard that would help managers **analyze key trends and make data-driven decisions**.
<img width="715" alt="Screen Shot 2021-06-15 at 5 23 06 PM" src="https://github.com/user-attachments/assets/9d3f7b94-64e6-4ea7-b321-328a593d1ae1" />

---

## 🔍 Understanding the Business Need  
To build an effective dashboard, I first focused on **identifying the most critical KPIs** that would provide meaningful insights. The dataset contained various call center metrics, but I needed to determine which ones would be most useful for **measuring performance and improving customer service**.

---

## Key KPIs Selected for the Dashboard:  
- ✅ **Overall Customer Satisfaction** – Understanding customer sentiment.  
- ✅ **Calls Answered vs. Abandoned** – Measuring efficiency in handling customer calls.  
- ✅ **Call Volume by Time of Day** – Identifying peak hours for better staffing decisions.  
- ✅ **Average Speed of Answer** – Evaluating how quickly customers are assisted.  
- ✅ **Agent Performance Quadrant** – Comparing agent efficiency and identifying top performers.  

By focusing on these **core KPIs**, the dashboard provides managers with a **holistic view** of call center operations, helping them identify areas for improvement and optimize workforce allocation.

---

##  Building the Dashboard in Power BI  
Measures
--------------------------
 1. of answered = Calculate(distinctcount('Call Center'[Call Id]),Filter('Call Center','Call Center'[Answered (Y/N)]="Y"))

 2. of resolved = Calculate(distinctcount('Call Center'[Call Id]),Filter('Call Center','Call Center'[Resolved]="Y"))

 3. Target Value Satisfaction = 4.5

    
    ![image](https://github.com/user-attachments/assets/bdeb84dd-b1cf-47ac-94e2-b8632ebf65fd)


my final dashboard for first task:
![image](https://github.com/user-attachments/assets/a551e3d4-9b3c-4216-b91c-0cacd24f198e)

If you’d like to explore my dashboard and interact with the visuals, click here: PwC Power BI Call Center Trends. I’d love to hear your feedback, so feel free to share your thoughts

### 📌 Key Findings & Solutions  

### 1️⃣ Call Answer Rate Needs Improvement  
- **81.08% of calls are answered**, but **18.92% are abandoned** before reaching an agent.  
- **Solution:** Reduce abandoned calls by optimizing **agent availability** and **call routing**.  

### 2️⃣ Resolution Rate is Below Expectation  
- **Only 72.92% of calls are resolved**, meaning **27.08% of customer queries remain unresolved**.  
- **Solution:** Improve **agent training** and provide **better resources** to resolve customer issues faster.  

### 3️⃣ Customer Satisfaction Needs a Boost  
- **Average satisfaction score is 3.40/5**, indicating a moderate level of satisfaction.  
- **Solution:** Identify **top-performing agents** and use their best practices to improve team performance.  

### 4️⃣ Peak Call Volume Requires Better Staffing  
- **Call volumes fluctuate** across months, leading to **higher unanswered calls in some months**.  
- **Solution:** Allocate **more staff during peak call hours** to handle demand effectively.  

### 5️⃣ Agent Performance Insights  
- Some agents have **faster response times** and **higher satisfaction rates** (e.g., **Jim, Greg**).  
- **Solution:** Use performance data to provide **coaching for low performers** and **reward high performers**.  

### 6️⃣ Average Speed of Answer is 67.52 Seconds  
- Some agents respond **faster than others** (e.g., **Becky - 65.33s, Greg - 68.44s**).  
- **Solution:** Reduce waiting time by improving **queue management** and **automating simple queries**.  

---

## 🚀 Business Impact  
 **Better customer service** by reducing unanswered and unresolved calls.  
 **Higher customer satisfaction** through improved agent efficiency.  
 **Increased operational efficiency** by optimizing workforce planning.  


---
# TASK 3 : Customer Retention

This dashboard was developed in response to a request from the telecom's Retention Manager to analyze key metrics related to customer loyalty and retention. It visually presents data to predict customer churn and identifies actionable strategies to enhance customer retention.

![image](https://github.com/user-attachments/assets/4e44c7da-3af5-467f-a791-d3a23766a529)

Here is the Dashboard you go 👇
![image](https://github.com/user-attachments/assets/eeb6939f-4537-4954-8691-b2c179db1490)

![image](https://github.com/user-attachments/assets/1099f149-2eb9-419b-86ab-f873e84771fd)

# Key Findings, Solutions, and Business Impact  

## Key Findings:  
1. **High Churn Rate (26.54%)**  
   - A significant portion of customers are leaving, affecting revenue and growth.  
2. **Payment Method Issues**  
   - Customers using electronic checks have a higher churn rate.  
3. **Contract Type Influence**  
   - Month-to-month contracts show the highest churn, while long-term contracts have lower churn.  
4. **Internet Service Preference**  
   - Fiber optic users show a **higher churn rate (41%)** than DSL users.  
5. **Subscription Duration Impact**  
   - Customers subscribed for less than a year tend to churn more frequently.  
6. **Admin & Tech Ticket Volume (2955 & 3632 respectively)**  
   - High unresolved service requests may contribute to churn.  

---

## Proposed Solutions:  
1. **Offer Incentives for Longer Contracts**  
   - Discounts or rewards for customers opting for annual plans to encourage retention.  
2. **Enhance Customer Support**  
   - Prioritize resolving admin & tech tickets faster to improve service satisfaction.  
3. **Improve Fiber Optic Service Reliability**  
   - Invest in better infrastructure to address performance complaints.  
4. **Tackle Payment-Related Churn**  
   - Promote credit card payments by offering cashback or discounts to reduce electronic check churn.  
5. **Engage High-Risk Customers Proactively**  
   - Identify at-risk customers early using data insights and offer personalized retention plans.  

---

## Business Impact:  
✔ **Increased Customer Retention**  
   - Implementing the above strategies could significantly lower churn, ensuring a stable revenue stream.  
✔ **Revenue Growth**  
   - Reducing churn will lead to higher customer lifetime value (CLV), increasing overall profits.  
✔ **Better Service Perception**  
   - Faster resolution of service requests and improved infrastructure will boost brand reputation.  
✔ **Optimized Revenue Collection**  
   - Encouraging secure and stable payment methods (credit cards) will reduce churn from billing issues.  

By leveraging these insights, the company can **transform a reactionary churn strategy into a proactive retention plan, securing long-term customer loyalty and business success.**  

---
# Task-4: Diversity & Inclusion  

## Problem Statement  

The objective of this task is to:  

- Define key performance indicators (KPIs) related to hiring, promotion, performance, and turnover.  
- Develop visualizations to track diversity and inclusion progress.  
- Identify possible root causes behind slow progress in achieving diversity goals.  

Currently, the organization only engages with employees after they have already left, making the approach reactive rather than proactive. To improve retention, it is essential to identify at-risk employees in advance.  

### Key Metrics for Analysis:  

- Total number of male employees  
- Total number of female employees  
- Total number of employees who left  
- Percentage of employees promoted in FY21  
- Percentage of women promoted  
- Percentage of male hires  
- Percentage of female hires  
- Turnover rate  
- Average performance rating of male employees  
- Average performance rating of female employees  

## Workflow  

### **Step 1: Data Upload**  

The dataset used for this analysis was sourced from **PWC Switzerland** and can be accessed via their official website: **[Dataset Link]**  

### **Step 2: Data Cleaning**  

The data was cleaned and transformed using **Power Query** before being loaded into **Microsoft Power BI Desktop** for further modeling and visualization.  

### **Step 3: Creating Dashboard:** 

Here you go 👇

![image](https://github.com/user-attachments/assets/8908165c-701b-41e6-a5b4-0c18dc765964)

![image](https://github.com/user-attachments/assets/ee891d88-bb1d-4714-a382-e41ff2301a03)

#  Diversity & Inclusion Dashboard

## **📌 Key Findings**
1. **Gender Imbalance in Hiring**
   - 59% of hires were male, while only 41% were female.
   - Hiring rates for female candidates decrease at senior management levels.

2. **Promotion Disparities**
   - Fewer women are promoted compared to men at all job levels.
   - Senior-level promotions are male-dominated.

3. **Higher Turnover Among Women**
   - Female turnover rate (11%) is slightly higher than males.
   - Women leave at a higher rate in executive and managerial roles.

4. **Performance Ratings**
   - The average performance rating for women (2.42) is slightly higher than for men (2.41).
   - However, promotions don’t align proportionally with performance ratings.

5. **Executive Gender Balance Gap**
   - Executive roles remain male-dominated, with a lower percentage of women in leadership.
   - Executive hires and promotions in FY21 were 100% male.

6. **Age Distribution Insights**
   - The majority of employees belong to the 30-40 age group.
   - Younger employees (20-30) have lower representation in leadership roles.

---

## **💡 Solutions & Recommendations**
1. **Diversity-Focused Hiring Strategies**
   - Implement gender-balanced hiring practices, especially at leadership levels.
   - Conduct structured hiring panels to eliminate bias.

2. **Leadership Development for Women**
   - Introduce mentorship programs to prepare women for leadership roles.
   - Provide leadership training and sponsorship programs for high-potential female employees.

3. **Reducing Female Turnover**
   - Conduct exit interviews to understand why women leave at higher rates.
   - Improve workplace policies, such as flexible work arrangements and parental leave benefits.

4. **Promotion Transparency & Fairness**
   - Ensure promotion criteria are performance-driven and unbiased.
   - Encourage leadership to sponsor and advocate for high-performing women.

5. **Balanced Executive Hiring**
   - Set diversity hiring goals for leadership positions.
   - Encourage diverse leadership pipelines by promoting internally.

6. **Inclusive Workplace Policies**
   - Regularly assess and address gender pay gaps.
   - Implement awareness and bias training for all employees.

---

##  Business Impact 
 **Improved Employee Retention** – Addressing turnover rates among women leads to lower attrition and reduced hiring costs.  

 **Enhanced Workplace Diversity** – A more inclusive workforce fosters innovation and better decision-making.  

 **Higher Employee Engagement** – A fair and transparent promotion process leads to higher motivation and productivity.  

 **Stronger Employer Brand** – Promoting diversity attracts top talent and improves the company’s reputation.  

 **Better Financial Performance** – Studies show diverse leadership teams drive higher profitability and business growth.  

---









