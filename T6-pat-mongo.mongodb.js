// T6-pat-mongo.mongodb.js

use("xyz001");

// (b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Drop collection
db.driver.drop();

// Create collection and insert documents
db.driver.insertMany([
    {
        "_id": 2004,
        "name": "Antoine",
        "licence_num": "670495098765",
        "no_of_trips": 1,
        "suspended": "N",
        "trips_info": [
            {
                "trip_id": 1286,
                "veh_vin": "AKPWQ124805106425",
                "pick-up": {
                    "location_id": 105,
                    "location_name": "South Paris Arena",
                    "intended_datetime": "06/08/2024 17:00",
                    "actual_datetime": "06/08/2024 17:05"
                },
                "drop off": {
                    "location_id": 115,
                    "location_name": "Eiffel Tower",
                    "intended_datetime": "06/08/2024 18:40",
                    "actual_datetime": "06/08/2024 19:00"
                }
            }
        ]
    },                          
    {
        "_id": 2005,
        "name": "Sophie",
        "licence_num": "89122a345678",
        "no_of_trips": 1,
        "suspended": "N",
        "trips_info": [
            {
                "trip_id": 1296,
                "veh_vin": "PIW27391395910001",
                "pick-up": {
                    "location_id": 106,
                    "location_name": "La Beaujoire Stadium",
                    "intended_datetime": "02/08/2024 17:00",
                    "actual_datetime": "02/08/2024 17:10"
                },
                "drop off": {
                    "location_id": 116,
                    "location_name": "Louvre Museum",
                    "intended_datetime": "02/08/2024 18:40",
                    "actual_datetime": "02/08/2024 18:55"
                }
            }
        ]
    },                       
    {
        "_id": 2014,
        "name": "Claire",
        "licence_num": "55052a543210",
        "no_of_trips": 1,
        "suspended": "N",
        "trips_info": [
            {
                "trip_id": 100,
                "veh_vin": "1C4SDHCT9FC614231",
                "pick-up": {
                    "location_id": 113,
                    "location_name": "Olympic and Paralympic village",
                    "intended_datetime": "30/07/2024 12:30",
                    "actual_datetime": "30/07/2024 12:30"
                },
                "drop off": {
                    "location_id": 111,
                    "location_name": "Porte de La Chapelle Arena",
                    "intended_datetime": "30/07/2024 14:00",
                    "actual_datetime": "30/07/2024 14:15"
                }
            }
        ]
    }
]);

// List all documents you added
db.driver.find();

// (c)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer
db.driver.find({
    "trips_info.drop off.location_name": { "$in": ["Champions Park", "Porte de La Chapelle Arena"] }
},
    {
        "name": 1,
        "licence_num": 1,
        "_id": 0
    }
);

// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer
// Show document before the new trip is added and the driver is suspended
db.driver.find({ "_id": 2004 });

// Add new trip and set the driver to suspended
db.driver.updateOne(
    { "_id": 2004 },
    {
        "$push": {
            "trips_info": {
                "trip_id": 1266,
                "veh_vin": "JUFS1058135081123",
                "pick-up": {
                    "location_id": 117,
                    "location_name": "Tuileries Garden",
                    "intended_datetime": "10/08/2024 13:10",
                    "actual_datetime": null
                },
                "drop off": {
                    "location_id": 118,
                    "location_name": "Sainte-Chapelle",
                    "intended_datetime": "10/08/2024 14:40",
                    "actual_datetime": null
                }
            }
        },
        "$set": {
            "suspended": "Y"
        }
    }
);

// Illustrate/confirm changes made
db.driver.find({ "_id": 2004 });
