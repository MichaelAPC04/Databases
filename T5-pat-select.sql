--T5-pat-select.sql

/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT 
    l.locn_id, 
    l.locn_name, 
    l.locn_address, 
    lt.locntype_description, 
    COUNT (t.trip_id) AS "PICKUP/DROP_OFF_COUNT" 
FROM 
    location l 
JOIN 
    trip t 
ON 
    l.locn_id = t.pickup_locn_id 
OR 
    l.locn_id = t.dropoff_locn_id 
JOIN 
    location_type lt 
ON 
    l.locntype_id = lt.locntype_id 
WHERE 
    t.trip_act_dropoffdt IS NOT NULL 
AND 
    t.trip_act_pickupdt IS NOT NULL 
GROUP BY 
    l.locn_id, 
    l.locn_name, 
    l.locn_address, 
    lt.locntype_description 
ORDER BY 
    "PICKUP/DROP_OFF_COUNT" DESC, 
    l.locn_id;



/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT 
    d.driver_id, 
    d.driver_given || ' ' || d.driver_family AS FULLNAME, 
CASE 
    WHEN COUNT(t.trip_id) = 0 THEN 'No Trips' 
    ELSE TO_CHAR(SUM(((t.trip_act_dropoffdt - t.trip_act_pickupdt) * 24) * 45.42), '$9999.99') 
END AS 
    TOTAL_PAYMENT_PERIOD 
FROM 
    driver d 
LEFT JOIN 
    trip t 
ON 
    d.driver_id = t.driver_id 
AND 
    t.trip_act_pickupdt 
BETWEEN 
    TO_DATE('01-AUG-2024', 'DD-MON-YYYY') 
AND 
    TO_DATE('07-AUG-2024', 'DD-MON-YYYY') 
GROUP BY 
    d.driver_id, d.driver_given || ' ' || d.driver_family 
ORDER BY 
    d.driver_id;
