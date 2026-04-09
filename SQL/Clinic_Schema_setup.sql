DROP TABLE IF EXISTS clinics;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS clinic_sales;
DROP TABLE IF EXISTS expenses;

CREATE TABLE clinics (
    cid TEXT,
    clinic_name TEXT,
    city TEXT,
    state TEXT,
    country TEXT
);

CREATE TABLE customer (
    uid TEXT,
    name TEXT,
    mobile TEXT
);

CREATE TABLE clinic_sales (
    oid TEXT,
    uid TEXT,
    cid TEXT,
    amount FLOAT,
    datetime DATETIME,
    sales_channel TEXT
);

CREATE TABLE expenses (
    eid TEXT,
    cid TEXT,
    description TEXT,
    amount FLOAT,
    datetime DATETIME
);

-- SAMPLE DATA
INSERT INTO clinics VALUES ('c1','ABC Clinic','Hyderabad','Telangana','India');

INSERT INTO clinic_sales VALUES
('o1','u1','c1',10000,'2021-09-10','online'),
('o2','u2','c1',15000,'2021-09-12','offline');

INSERT INTO expenses VALUES
('e1','c1','rent',5000,'2021-09-15');