CREATE DATABASE Aqua_Watch;
USE Aqua_Watch;

CREATE TABLE Area (
  area_id INT PRIMARY KEY,
  area_name VARCHAR(100),
  pincode INT
);

CREATE TABLE Supply_Daily (
  supply_record_id INT PRIMARY KEY,
  household_id INT,
  area_id INT,
  supply_date DATE,
  water_supplied_litres INT,
  FOREIGN KEY (area_id) REFERENCES Area(area_id)
);

CREATE TABLE Complaints (
  complaint_id INT PRIMARY KEY,
  area_id INT,
  complaint_type VARCHAR(100),
  status VARCHAR(50),
  FOREIGN KEY (area_id) REFERENCES Area(area_id)
);

CREATE TABLE Tanker_Orders (
  tanker_order_id INT PRIMARY KEY,
  household_id INT,
  area_id INT,
  order_date DATE
);