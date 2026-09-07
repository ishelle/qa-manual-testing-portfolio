-- Logistics QA Data Validation Examples

-- 1. Verify shipment exists
SELECT *
FROM shipments
WHERE tracking_number = 'TRK100001';

-- 2. Verify shipment status
SELECT tracking_number, status
FROM shipments
WHERE tracking_number = 'TRK100001';

-- 3. Find shipments that do not have a destination
SELECT *
FROM shipments
WHERE destination IS NULL
   OR destination = '';

-- 4. Find invalid package weights
SELECT *
FROM shipments
WHERE package_weight <= 0;

-- 5. Verify delivered shipments
SELECT tracking_number, status
FROM shipments
WHERE status = 'Delivered';
