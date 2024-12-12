--T3-pat-dml.sql

/*(a)*/
DROP SEQUENCE official_seq;
CREATE SEQUENCE official_seq START WITH 100 INCREMENT BY 10;

DROP SEQUENCE trip_seq;
CREATE SEQUENCE trip_seq START WITH 100 INCREMENT BY 10;


/*(b)*/
INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    official_seq.NEXTVAL,
    'Franklin',
    'Gateau',
    'VIN',
    NULL
);

COMMIT;

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1C4SDHCT9FC614231',
    'YPH1234',
    TO_DATE('20-DEC-2021', 'DD-MON-YYYY'),
    567821,
    6,
    (SELECT vm_model_id FROM vehicle_model WHERE UPPER(vm_model) = 'ALPHARD')
);

COMMIT;


/*(c)*/
INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    trip_seq.NEXTVAL,
    6,
    TO_DATE('30-JUL-2024 12:30:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('30-JUL-2024 14:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE UPPER(driver_licence) = UPPER('55052a543210')),
    (SELECT locn_id FROM location WHERE UPPER(locn_name) = UPPER('Olympic and Paralympic Village')),
    (SELECT locn_id FROM location WHERE UPPER(locn_name) = UPPER('Porte de la Chapelle Arena')),
    (SELECT lang_iso_code FROM language WHERE UPPER(lang_name) = UPPER('English')),
    (SELECT off_id FROM official WHERE UPPER(off_given) = UPPER('Franklin') AND UPPER(off_family) = UPPER('Gateau'))
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    trip_seq.NEXTVAL,
    6,
    TO_DATE('30-JUL-2024 20:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('30-JUL-2024 21:15:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE UPPER(driver_licence) = UPPER('55052a543210')),
    (SELECT locn_id FROM location WHERE UPPER(locn_name) = UPPER('Porte de la Chapelle Arena')),
    (SELECT locn_id FROM location WHERE UPPER(locn_name) = UPPER('Olympic and Paralympic Village')),
    (SELECT lang_iso_code FROM language WHERE UPPER(lang_name) = UPPER('English')),
    (SELECT off_id FROM official WHERE UPPER(off_given) = UPPER('Franklin') AND UPPER(off_family) = UPPER('Gateau'))
);

COMMIT;


/*(d)*/
UPDATE 
    trip SET trip_act_pickupdt = TO_DATE('30-JUL-2024 12:30:00', 'DD-MON-YYYY HH24:MI:SS'),
    trip_act_dropoffdt = TO_DATE('30-JUL-2024 14:15:00', 'DD-MON-YYYY HH24:MI:SS')
WHERE 
    UPPER(veh_vin) = UPPER('1C4SDHCT9FC614231') 
AND 
    driver_id = (SELECT driver_id FROM driver WHERE UPPER(driver_licence) = UPPER('55052a543210')) 
AND 
    trip_int_pickupdt = TO_DATE('30-JUL-2024 12:30:00', 'DD-MON-YYYY HH24:MI:SS') 
AND 
    trip_int_dropoffdt = TO_DATE('30-JUL-2024 14:00:00', 'DD-MON-YYYY HH24:MI:SS');

DELETE FROM 
    trip 
WHERE 
    UPPER(veh_vin) = UPPER('1C4SDHCT9FC614231') 
AND 
    driver_id = (SELECT driver_id FROM driver WHERE UPPER(driver_licence) = UPPER('55052a543210')) 
AND 
    trip_int_pickupdt > TO_DATE('30-JUL-2024 14:15:00', 'DD-MON-YYYY HH24:MI:SS') 
AND 
    trip_act_pickupdt IS NULL;

COMMIT;