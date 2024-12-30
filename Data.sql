-- Create Product Table
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

-- Create Customer Table
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Tel NUMBER
);

-- Creating the Orders Table
CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    OrderDate DATE DEFAULT SYSDATE,
    PRIMARY KEY (Customer_id, Product_id),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

-- Adding Category column to Product Table
ALTER TABLE Product
ADD Category VARCHAR2(20);

-- Add OrderDate column to Orders Table with SYSDATE as default value
ALTER TABLE Orders
ADD OrderDate DATE DEFAULT SYSDATE;
