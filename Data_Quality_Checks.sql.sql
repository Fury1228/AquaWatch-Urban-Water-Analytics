-- Check missing values
SELECT COUNT(*) FROM Supply_Daily WHERE water_supplied_litres IS NULL;
SELECT COUNT(*) FROM Complaints WHERE status IS NULL;

-- Check duplicates
SELECT supply_record_id, COUNT(*) FROM Supply_Daily
GROUP BY supply_record_id HAVING COUNT(*) > 1;

SELECT tanker_order_id, COUNT(*) FROM Tanker_Orders
GROUP BY tanker_order_id HAVING COUNT(*) > 1;

SELECT complaint_id, COUNT(*) FROM Complaints
GROUP BY complaint_id HAVING COUNT(*) > 1;

-- Check total rows
SELECT COUNT(*) FROM Supply_Daily;
SELECT COUNT(*) FROM Complaints;
SELECT COUNT(*) FROM Tanker_Orders;