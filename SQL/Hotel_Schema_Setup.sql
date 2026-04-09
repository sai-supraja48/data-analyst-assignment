-- Drop tables if already exist
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS booking_commercials;

-- USERS
CREATE TABLE users (
    user_id TEXT PRIMARY KEY,
    name TEXT,
    phone_number TEXT,
    mail_id TEXT,
    billing_address TEXT
);

-- BOOKINGS
CREATE TABLE bookings (
    booking_id TEXT PRIMARY KEY,
    booking_date DATETIME,
    room_no TEXT,
    user_id TEXT
);

-- ITEMS
CREATE TABLE items (
    item_id TEXT PRIMARY KEY,
    item_name TEXT,
    item_rate FLOAT
);

-- BOOKING COMMERCIALS
CREATE TABLE booking_commercials (
    id TEXT PRIMARY KEY,
    booking_id TEXT,
    bill_id TEXT,
    bill_date DATETIME,
    item_id TEXT,
    item_quantity FLOAT
);

-- SAMPLE DATA

INSERT INTO users VALUES
('u1','John Doe','9999999999','john@example.com','ABC Street'),
('u2','Alice','8888888888','alice@example.com','XYZ Street');

INSERT INTO bookings VALUES
('b1','2021-11-10 10:00:00','r101','u1'),
('b2','2021-11-15 12:00:00','r102','u1'),
('b3','2021-10-05 09:00:00','r201','u2');

INSERT INTO items VALUES
('i1','Paratha',20),
('i2','Veg Curry',80);

INSERT INTO booking_commercials VALUES
('c1','b1','bill1','2021-11-10','i1',2),
('c2','b1','bill1','2021-11-10','i2',1),
('c3','b2','bill2','2021-11-15','i2',5),
('c4','b3','bill3','2021-10-05','i1',50);