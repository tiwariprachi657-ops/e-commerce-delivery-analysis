# E-Commerce Delivery Performance Analysis

## Project Overview

This project analyzes a simulated e-commerce delivery dataset to understand order performance, revenue, cancellations, delivery operations, and driver performance.

The analysis was done using MySQL, Excel, and Power BI.

---

## Tools Used

- MySQL - data analysis and KPI calculations
- Excel - driver performance analysis using Pivot Tables
- Power BI - dashboard creation and visualization
- GitHub - project documentation

---

## Dataset

The project uses the following tables:

- users - customer information
- orders - order transactions and payment details
- deliveries - delivery execution and timing information
- drivers - driver information
- zones - city and zone mapping
- ab_test_events - experiment and conversion data

Main dataset sizes:

- 75,008 orders
- 58,875 delivery records
- 15,000 users
- 500 drivers
- 9,738 A/B test events

---

## Analysis Performed

### Order Analysis

The analysis includes:

- total orders
- total revenue
- order status distribution
- cancellation rate
- monthly order volume
- city-wise order volume
- zone-wise order volume

### Delivery Analysis

The analysis includes:

- delivery success rate
- successful deliveries by driver
- average driver delay
- delivery timing categories
- cancellation reasons

### A/B Test Analysis

Conversion was calculated at the user level so that each user is counted once.

---

## Key Results

### Overall Performance

- Total Orders: 75,008
- Total Revenue: ₹95.23M
- Cancellation Rate: 15.53%
- Delivery Success Rate: 66.86%

### Order Status

- Delivered: 49,985
- Cancelled: 11,650
- Placed: 7,472
- Returned: 5,901

### Demand by Location

The highest order volumes were:

- Hyderabad: 8,293 orders
- Bangalore: 8,221 orders
- Chennai: 7,970 orders
- Delhi: 7,521 orders
- Mumbai: 7,201 orders

South was the highest-volume delivery zone with 24,484 orders.

### Monthly Orders

October had the highest order volume with 14,289 orders.

### Cancellation Analysis

The most common cancellation reasons were:

- customer request: 3,641
- long delivery ETA: 3,332
- payment failed: 1,825
- out of stock: 1,338
- other: 941
- unknown / missing reason: 573

### Delivery Timing

Among delivered orders:

- Early: 41,764
- On Time: 11
- 1-30 min late: 274
- 31-60 min late: 276
- 61-120 min late: 514
- 120+ min late: 7,312

Most delivered orders arrived earlier than expected, while a smaller group experienced delays.

### Driver Performance

Driver performance was compared using:

- successful deliveries
- average positive delay between 1 and 240 minutes

Some of the drivers with the highest successful-delivery counts were:

- Nitesh Raghavan - 220
- Yasti Solanki - 219
- Hardik Nayak - 212
- Vivaan Walla - 202

### A/B Test

User-level conversion results:

- Test group: 22.48%
- Control group: 17.58%

The test group had a higher conversion rate than the control group, suggesting that the test version may be more effective.

---

## Power BI Dashboards

Two dashboard pages were created.

### Executive Overview
![Executive Overview Dashboard](<dashboards/Executive_Overview.png>)

Includes:

- total orders
- total revenue
- cancellation rate
- delivery success rate
- monthly order volume
- orders by city
- order status distribution
- A/B conversion rate

### Delivery Operations
![Delivery Operations Dashboard](<dashboards/Delivery_operations_dashboard.png>)
Includes:

- driver performance
- delivery timing distribution
- top cancellation reasons
- orders by delivery zone

---

## Project Structure

```text
E-Commerce-Analysis/
│
├── dashboards/
├── Executive_Overview.png
├── Delivery_operations_dashboard.png
└── ecommerce_delivery_dashboard.pbix
│
├── excel/
│   ├── driver_performance_analysis.csv
│   └── driver_performance_pivot.xlsx
│
├── raw data/
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_data_validation.sql
│   ├── 03_daily_orders_revenue.sql
│   ├── 04_order_status_distribution.sql
│   ├── 05_cancellation_reason_analysis.sql
│   ├── 06_city_order_volume.sql
│   ├── 07_delivery_completion_rate.sql
│   ├── 08_driver_performance.sql
│   ├── 09_order_funnel_analysis.sql
│   ├── 10_ab_test_conversion.sql
│   └── 11_delivery_delay_analysis.sql
│
└── README.md