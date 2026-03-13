-- =====================================================
-- E-Commerce Delivery Analytics
-- Schema setup for portfolio project
-- This script creates the core tables used for SQL,
-- Excel, and Power BI analysis.
-- =====================================================

-- Create database if it does not already exist
CREATE DATABASE IF NOT EXISTS ecommerce_delivery_analytics;
USE ecommerce_delivery_analytics;

-- -----------------------------------------------------
-- Table: users
-- Purpose: Stores customer-level information
-- -----------------------------------------------------
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    signup_date DATE,
    city VARCHAR(50),
    zone VARCHAR(20)
);

-- -----------------------------------------------------
-- Table: drivers
-- Purpose: Stores driver details for delivery analysis
-- -----------------------------------------------------
CREATE TABLE drivers (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(50),
    city VARCHAR(50),
    zone VARCHAR(20),
    onboarding_date DATE,
    active_flag BOOLEAN
);

-- -----------------------------------------------------
-- Table: zones
-- Purpose: Lookup table for city-to-zone mapping
-- -----------------------------------------------------
CREATE TABLE zones (
    city VARCHAR(50) PRIMARY KEY,
    zone VARCHAR(20),
    tier VARCHAR(10)
);

-- -----------------------------------------------------
-- Table: orders
-- Purpose: Stores order-level transaction data
-- -----------------------------------------------------
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATETIME,
    order_status VARCHAR(20),
    cancel_reason VARCHAR(50),
    order_value DECIMAL(10,2),
    payment_method VARCHAR(20),
    estimated_delivery_time DATETIME
);

-- -----------------------------------------------------
-- Table: deliveries
-- Purpose: Stores delivery execution details
-- -----------------------------------------------------
CREATE TABLE deliveries (
    delivery_id INT PRIMARY KEY,
    order_id INT,
    driver_id INT,
    dispatch_time DATETIME,
    delivery_time DATETIME,
    delivery_status VARCHAR(20),
    delay_minutes INT,
    fail_reason VARCHAR(50)
);

-- -----------------------------------------------------
-- Table: ab_test_events
-- Purpose: Stores experiment exposure and conversion data
-- -----------------------------------------------------
CREATE TABLE ab_test_events (
    event_id INT PRIMARY KEY,
    user_id INT,
    experiment_name VARCHAR(50),
    variant VARCHAR(10),
    event_date DATE,
    converted_flag BOOLEAN,
    metric_name VARCHAR(50),
    metric_value DECIMAL(10,4)
);

-- =====================================================
-- End of schema setup
-- =====================================================
