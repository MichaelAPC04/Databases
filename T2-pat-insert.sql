--T2-pat-insert.sql

--------------------------------------
--INSERT INTO official
--------------------------------------
INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    1234,
    'Anthony',
    'Peters',
    'AUS',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    4444,
    'Rion',
    'Goslov',
    'UKR',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    5432,
    'Ryan',
    'Gosling',
    'USA',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    8972,
    'Boe',
    'Jiden',
    'JPN',
    5432
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    7777,
    'John',
    'Maloney',
    'CAN',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    7776,
    'Jill',
    'Maloney',
    'CPV',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    6667,
    'Walter',
    'White',
    'USA',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    5555,
    'Jesse',
    'Pinkman',
    'CAY',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    3344,
    'Travis',
    'Scott',
    'CAF',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    5552,
    'Ken',
    'Carson',
    'UAE',
    NULL
);


--------------------------------------
--INSERT INTO vehicle
--------------------------------------
INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'BOEJIDEN123456789',
    'KDOG333',
    TO_DATE('02-AUG-2020', 'DD-MON-YYYY'),
    500000,
    30,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'AGT00223456123456',
    'YGH4445',
    TO_DATE('07-DEC-2019', 'DD-MON-YYYY'),
    600000,
    20,
    2
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'YGG45383923902358',
    'KIJ5421',
    TO_DATE('20-JUL-2021', 'DD-MON-YYYY'),
    700000,
    10,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'TII45383241239029',
    'KIJ5423',
    TO_DATE('4-JUN-2018', 'DD-MON-YYYY'),
    100000,
    35,
    4
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'PIW27391395910001',
    'JTAG456',
    TO_DATE('3-NOV-2018', 'DD-MON-YYYY'),
    124561,
    55,
    5
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'OOP01841031413012',
    'TUAH495',
    TO_DATE('17-JUL-2015', 'DD-MON-YYYY'),
    653122,
    17,
    6
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'JUFS1058135081123',
    'YYY1111',
    TO_DATE('14-AUG-2022', 'DD-MON-YYYY'),
    351235,
    35,
    7
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'AFUDAG13513581035',
    'EKG1290',
    TO_DATE('5-MAY-2018', 'DD-MON-YYYY'),
    136013,
    50,
    8
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'AEGO1208510385124',
    'KAD1245',
    TO_DATE('28-DEC-2020', 'DD-MON-YYYY'),
    120151,
    50,
    9
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'AKPWQ124805106425',
    'AUI1208',
    TO_DATE('26-JAN-2021', 'DD-MON-YYYY'),
    201353,
    55,
    1
);


--------------------------------------
--INSERT INTO trip
--------------------------------------
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
    3331,
    2,
    TO_DATE('20-JUL-2024 12:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('20-JUL-2024 12:50:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'BOEJIDEN123456789',
    2001,
    101,
    102,
    'en',
    1234
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
    1111,
    5,
    TO_DATE('20-JUL-2024 12:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('20-JUL-2024 12:50:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'AGT00223456123456',
    2002,
    101,
    102,
    'fr',
    4444
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
    2222,
    7,
    TO_DATE('21-JUL-2024 14:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('21-JUL-2024 14:35:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'BOEJIDEN123456789',
    2003,
    103,
    104,
    'fr',
    5432
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
    4444,
    11,
    TO_DATE('21-JUL-2024 14:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('21-JUL-2024 14:35:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'AGT00223456123456',
    2004,
    103,
    104,
    'pt',
    8972
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
    6565,
    8,
    TO_DATE('25-JUL-2024 18:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('25-JUL-2024 19:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'YGG45383923902358',
    2005,
    105,
    106,
    'es',
    7777
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
    4598,
    1,
    TO_DATE('24-JUL-2024 18:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('24-JUL-2024 19:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'YGG45383923902358',
    2006,
    107,
    108,
    'kk',
    5552
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
    0011,
    29,
    TO_DATE('12-AUG-2024 18:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('12-AUG-2024 19:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'TII45383241239029',
    2007,
    109,
    110,
    'fr',
    7777
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
    0022,
    31,
    TO_DATE('07-AUG-2024 18:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('07-AUG-2024 19:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'TII45383241239029',
    2008,
    111,
    112,
    'fr',
    5552    
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
    0099,
    35,
    TO_DATE('13-AUG-2024 18:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('13-AUG-2024 19:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'PIW27391395910001',
    2009,
    113,
    114,
    'fr',
    8972
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
    8899,
    40,
    TO_DATE('26-JUL-2024 18:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('26-JUL-2024 19:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'PIW27391395910001',
    2010,
    115,
    116,
    'en',
    8972
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
    1244,
    14,
    TO_DATE('27-JUL-2024 18:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('27-JUL-2024 19:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'JUFS1058135081123',
    2011,
    117,
    118,
    'fr',
    5552
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
    4470,
    25,
    TO_DATE('02-AUG-2024 18:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('02-AUG-2024 19:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'JUFS1058135081123',
    2012,
    119,
    120,
    'ar',
    3344    
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
    7145,
    34,
    TO_DATE('07-AUG-2024 18:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('07-AUG-2024 19:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'JUFS1058135081123',
    2013,
    104,
    119,
    'en',
    3344
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
    1270,
    41,
    TO_DATE('26-JUL-2024 17:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('26-JUL-2024 18:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'AFUDAG13513581035',
    2014,
    106,
    110,
    'en',
    6667
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
    1271,
    42,
    TO_DATE('24-JUL-2024 17:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('24-JUL-2024 18:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'AFUDAG13513581035',
    2015,
    107,
    119,
    'fr',
    6667
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
    1272,
    44,
    TO_DATE('30-JUL-2024 17:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('30-JUL-2024 18:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'AEGO1208510385124',
    2001,
    109,
    119,
    'de',
    6667
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
    1274,
    47,
    TO_DATE('29-JUL-2024 17:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('29-JUL-2024 18:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'AEGO1208510385124',
    2002,
    103,
    120,
    'en',
    5555  
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
    1276,
    49,
    TO_DATE('05-AUG-2024 17:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    TO_DATE('05-AUG-2024 18:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    NULL,
    'AKPWQ124805106425',
    2003,
    107,
    116,
    'en',
    5555 
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
    1286,
    51,
    TO_DATE('06-AUG-2024 17:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    TO_DATE('06-AUG-2024 17:05:00', 'DD-MON-YYYY HH24:MI:SS'),
    TO_DATE('06-AUG-2024 18:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    TO_DATE('06-AUG-2024 19:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    'AKPWQ124805106425',
    2004,
    105,
    115,
    'en',
    5555
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
    1296,
    52,
    TO_DATE('02-AUG-2024 17:00:00', 'DD-MON-YYYY HH24:MI:SS'),
    TO_DATE('02-AUG-2024 17:10:00', 'DD-MON-YYYY HH24:MI:SS'),
    TO_DATE('02-AUG-2024 18:40:00', 'DD-MON-YYYY HH24:MI:SS'),
    TO_DATE('02-AUG-2024 18:55:00', 'DD-MON-YYYY HH24:MI:SS'),
    'PIW27391395910001',
    2005,
    106,
    116,
    'fr',
    7776
);

COMMIT;