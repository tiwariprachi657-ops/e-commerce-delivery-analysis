
# E-Commerce Delivery Performance Analysis

This project analyzes delivery operations data from an e-commerce platform.
The objective is to understand order trends, cancellations, driver performance, and delivery delays using SQL, Excel, and Power BI.

---

## Project Objective

The purpose of this project is to analyze operational delivery data and identify patterns that impact delivery performance.

Questions explored in this project:

- How many orders are processed and how much revenue is generated?
- Which cities generate the highest order volumes?
- What are the main reasons for order cancellations?
- How do drivers perform in terms of deliveries and delay times?
- How are delivery delays distributed?

---

## Tools Used

- SQL (MySQL) – Data exploration and analysis
- Excel – Pivot table analysis
- Power BI – Data visualization and dashboards
- Python – Used only to generate the sample dataset

---

## Dataset Description

The dataset simulates an e-commerce delivery system.

Tables used:

- users – customer information
- orders – order transactions and payment details
- deliveries – delivery timing and delay information
- drivers – driver data
- zones – delivery zones and city mapping
- ab_test_events – experiment data

---

## Analysis Process

### 1. SQL Analysis

SQL queries were used to explore the dataset and calculate key metrics such as:

- total orders
- revenue generated
- order status distribution
- cancellation reasons
- city-wise order volume
- delivery success rate

Example query:

SELECT city,
COUNT(order_id) AS total_orders,
SUM(order_value) AS total_revenue
FROM orders
GROUP BY city
ORDER BY total_orders DESC;

---

### 2. Excel Analysis

Excel was used to analyze driver performance using Pivot Tables.

Metrics analyzed:

- total deliveries per driver
- average delivery delay
- highlighting drivers with higher delays

---

### 3. Power BI Dashboard

Two dashboards were built to visualize operational performance.

Executive Overview Dashboard

- Total Orders
- Total Revenue
- Delivery Success Rate
- Cancellation Rate
- Monthly order trend
- Orders by city

Delivery Operations Dashboard

- Driver performance overview
- Delivery delay distribution
- Top cancellation reasons
- Operational insights

---

## Key Insights

- Around 75K orders were processed in the dataset.
- Hyderabad and Bangalore generated the highest order volumes.
- Customer request and long delivery ETA are the most common cancellation reasons.
- Most deliveries are completed with delays under 30 minutes.
- A few drivers show higher delay averages which may indicate routing or workload issues.

---

## Project Structure

E-Commerce-Delivery-Analysis
│
├── data
├── sql
├── excel
├── dashboards
└── README.md

---

## Dashboard Preview

Add these screenshots to the repository:

- dashboard_overview.png
- delivery_operations_dashboard.png

---

## Conclusion

This project demonstrates a simple end-to-end workflow for analyzing operational delivery data using SQL, Excel, and Power BI.
