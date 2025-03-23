# 🛒 Walmart Sales Analysis 📊  




## 📌 Project Overview  
This project is an **end-to-end data analysis solution** designed to extract critical business insights from Walmart sales data.  
The goal was to understand **customer purchasing behavior, identify revenue trends, and optimize business strategies** using **Python** for data cleaning, **SQL** for advanced querying, and **Power BI** for visualization.  

---

## 🔑 Problem Statement / Primary Goal  
Walmart needed detailed insights into its **sales performance** to optimize operational efficiency and customer satisfaction.  
The primary objectives were:  

1️⃣ Identify **revenue trends** across branches and product categories.  
2️⃣ Analyze **sales performance** by payment methods, time of day, and city-wise sales.  
3️⃣ Detect **branches with the highest revenue drop** year-over-year.  
4️⃣ Understand **customer behavior** during different shifts and identify **top-rated product categories**.  

---

## 🛠️ Solution Approach  
The project followed a structured **data pipeline** with the following key steps:  

### **1️⃣ Set Up Environment**  
✅ **Tools Used:** Visual Studio Code (VS Code), Python, Microsoft SQL  
✅ Organized project folders with subfolders for **data, notebooks, SQL queries, and reports**.  

### **2️⃣ Data Collection**  
📥 Downloaded **Walmart sales dataset** using Kaggle API.  
📂 Stored the dataset locally in the `data/` folder.  

### **3️⃣ Data Cleaning**  
🛠️ Performed **comprehensive data cleaning** using **Python (Pandas):**  
✔ Removed **duplicate records**.  
✔ Handled **missing values** through appropriate methods.  
✔ Converted **data types** (dates to `datetime`, prices to `float`).  
✔ Applied **currency formatting** using `.replace()`.  

### **4️⃣ Feature Engineering**  
➕ Created **Total Amount** column by multiplying `unit_price` and `quantity`.  
📊 Added this feature to **improve aggregation** and **revenue analysis**.  

### **5️⃣ Database Setup**  
📌 Loaded **cleaned data** into **Microsoft SQL Server**.  
✅ Verified data accuracy through **SQL queries**.  

### **6️⃣ SQL Analysis**  
Executed various **SQL queries** to answer key business questions:  
❓ What are the most frequently used **payment methods**?  
❓ Which **branch** experienced the **highest revenue drop** year-over-year?  
❓ What is the **busiest day** for each branch?  
❓ Which **product categories generate the highest profit**?  
❓ How do **sales shift throughout the day** across branches?  

---

## 📊 Business Insights  
📌 **Highest transactions** were made through **Credit Card** payment method.  
📌 The **largest revenue decline** was **62.62%** in one branch, followed by **58.58%** in another.  
📌 **Morning shifts** had the **lowest transactions**, while **Evening shifts** had the highest.  
📌 **Top-rated product categories** varied across branches, with **Electronics** being the most popular.  

---

## 📈 Impact  
✅ Provided insights into **customer payment preferences**.  
✅ Helped **optimize staff scheduling** based on peak sales hours.  
✅ Identified **branches that need sales improvement strategies**.  
✅ Supported **decision-making** on **regional promotions and stock management**.  

---

## 📉 Results  
This project provided **actionable business insights** that help Walmart:  
🔹 Improve **operational efficiency**.  
🔹 Enhance **customer satisfaction**.  
🔹 Focus **marketing efforts** on **high-demand product categories**.  
🔹 Optimize **staff scheduling** based on peak sales periods.  

---

## 🚀 Future Improvements  
🔮 Develop an **Interactive Power BI Dashboard** for better visualization.  
📊 Implement **predictive analysis** to forecast future sales trends.  
⚙️ Automate the **data pipeline using Apache Airflow**.  

---

### **💡 Want to explore the insights? Check out the full project! 🚀**
