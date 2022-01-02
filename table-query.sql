USE studiox_devices;
SELECT * FROM affiliations;
SELECT * FROM auth_users;
SELECT * FROM departments;
SELECT * FROM devices;
SELECT * FROM lending_rec;
SELECT * FROM models;
SELECT * FROM users;

-- an example of a complete lending record
SELECT lending_rec.ur_id, users.fname, users.lname, affiliations.position, models.name, lending_rec.from, until
FROM lending_rec, users, devices, models, affiliations
WHERE lending_rec.ur_id = users.ur_id AND lending_rec.device_id = devices.device_id AND devices.model_id = models.model_id AND users.ur_id = affiliations.ur_id;