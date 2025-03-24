# 🗳️ India General Election 2024 - SQL Analysis  
![-1x-1](https://github.com/user-attachments/assets/60fa75ac-ccf5-488c-be6c-142f81d1185a)


## 📌 Project Overview  
The **2024 Indian General Election** was one of the largest democratic events, with millions of voters across multiple states. This project aims to analyze the election results using **SQL** to gain insights into party performance, candidate success, and vote distributions.  

By structuring the election data into a **relational database schema**, this project enables efficient querying and analysis. The dataset consists of **five tables** capturing **constituency-wise, party-wise, and state-wise results**, which are processed and analyzed using SQL queries.  

---

## 🎯 Problem Statement / Primary Goal  
### 🔥 Challenge  
Raw election data is often **scattered, unstructured, and difficult to analyze**. Various sources provide election results in **different formats** (state-wise, party-wise, constituency-wise), making it hard to compare performance effectively.  

### 💡 Primary Goal  
- Structure election data using **SQL tables**  
- Identify **party-wise and constituency-wise trends**  
- Analyze **vote margins, winning patterns, and close contests**  
- Provide insights using **aggregations and ranking functions**  

---

## 🛠 Solution Approach  
### **Step 1: Data Structuring**  
- Created **five relational tables** (`constituencywise_details`, `constituencywise_results`, `partywise_results`, `statewise_results`, and `states`)  
- Defined **primary and foreign keys** to establish relationships  
- Ensured **data normalization** for efficient queries  

### **Step 2: Data Analysis Using SQL**  
- Used **SQL joins** to combine constituency-wise and party-wise data  
- Applied **aggregation functions** (`SUM()`, `COUNT()`, `AVG()`) to calculate total votes and margins  
- Implemented **window functions** (`RANK()`, `DENSE_RANK()`) to rank candidates based on votes  
- Used **subqueries and CTEs** to derive insights  

### **Step 3: Insights Extraction & Visualization**  
- Identified **top-winning parties** and their vote shares  
- Analyzed **constituencies with the closest vote margins**  
- Determined **state-wise leading and trailing candidates**  
- Created **Power BI visualizations** for better insights (if applicable)  

---

## 📊 Business Insights  
This project helps answer key election-related questions:  
-  **1.	Total Seats?**  
-  **2.	What is the total number of seats available for elections in each state ?**  
-  **3.	Total Seats Won by NDA Allianz ?**  
-  **4.	Seats Won by NDA Allianz Parties?**  
-  **5.	Total Seats Won by I.N.D.I.A. Allianz?**
-  **6.	Seats Won by I.N.D.I.A. Allianz Parties**  
-  **7.	Add new column field in table partywise_results to get the Party Allianz as NDA, I.N.D.I.A and OTHER**  
-  **8.	Which party alliance (NDA, I.N.D.I.A, or OTHER) won the most seats across all states?**  
-  **9.	Winning candidate's name, their party name, total votes, and the margin of victory for a specific state and constituency?**
-  **10. What is the distribution of EVM votes versus postal votes for candidates in a specific constituency?**
-  **11.	 Which parties won the most seats in s State, and how many seats did each party win?**  
- **12.	What is the total number of seats won by each party alliance (NDA, I.N.D.I.A, and OTHER) in each state for the India Elections 2024?**  
-  **13. Which candidate received the highest number of EVM votes in each constituency (Top 10)?**  
-  **14.	Which candidate won and which candidate was the runner-up in each constituency of State for the 2024 elections?**  

By structuring the data into an **SQL database**, stakeholders (media, researchers, policymakers) can efficiently analyze and interpret election trends.  

---

## 🚀 Impact  
✅ **Faster Data Analysis** – SQL queries allow for quick insights into election trends  
✅ **Accurate Trend Identification** – Helps in understanding voting patterns at different levels  
✅ **Decision-Making Support** – Useful for political analysts and researchers  
✅ **Scalability** – The structured approach allows future election datasets to be easily integrated  

---

## 📈 Results  
- 🏛️ **Successfully structured** large-scale election data into a **normalized SQL database**  
- 🔍 **Extracted key insights** like **party dominance, close contests, and state-wise performance**  
- 📊 **Generated SQL-based reports** summarizing election trends  
- 🎯 **Created ERD/schema for better data visualization and understanding**  

---

## 🔮 Future Improvements  
📌 **Automating Data Ingestion** – Using Python or APIs to fetch real-time election data  
📌 **Advanced Analytics** – Applying machine learning to predict election outcomes based on trends  
📌 **Visualization Enhancements** – Creating interactive dashboards with **Power BI or Tableau**  
📌 **Real-time Tracking** – Implementing a **live election results dashboard**  

---

## 📂 Dataset  
The project uses the following CSV files:  
- `constituencywise_details.csv`  
- `constituencywise_results.csv`  
- `partywise_results.csv`  
- `states.csv`  
- `statewise_results.csv`  

---

## 🏗️ Entity Relationship Diagram (ERD)  
Below is the ERD that i have created for this project:

![erd](https://github.com/user-attachments/assets/88791e63-02d5-4c1c-85ab-efc3953225fb)



---

## 📝 How to Use  
1. Load the provided CSV files into a **SQL database**.  
2. Run the provided **SQL queries** to extract insights.  
3. Optionally, use **Power BI** to create dashboards for visualization.  

---

## 💡 Conclusion  
This project showcases how **SQL can be leveraged for real-world data analysis**. By structuring election data into relational tables, we extracted meaningful insights about **party performance, candidate success, and voting trends**. Future improvements include **real-time tracking, automation, and advanced visualizations**. 🚀  

---

### ⭐ If you found this project useful, feel free to **star** the repository and share your feedback! 😊  
