/*
multi
line
comments

*/


create database Army;

use Army;

drop database Army;

 -- 1. Soldiers
CREATE TABLE Soldiers (
    soldier_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    rank_id INT,
    unit_id INT,
    date_of_birth DATE,
    date_enlisted DATE,
    specialization VARCHAR(100),
    blood_group VARCHAR(5),
    contact_number VARCHAR(15)
);

 
 
INSERT INTO Soldiers VALUES
(1, 'Rahul', 'Singh', 3, 101, '1988-04-12', '2009-06-15', 'Infantry', 'B+', '9876543210'),
(2, 'Amit', 'Kumar', 4, 101, '1990-08-20', '2011-09-12', 'Artillery', 'O+', '9876543211'),
(3, 'Vikram', 'Patel', 2, 102, '1985-01-30', '2005-03-21', 'Engineer', 'A+', '9876543212'),
(4, 'Sanjay', 'Sharma', 5, 103, '1992-11-05', '2012-07-18', 'Signals', 'AB+', '9876543213'),
(5, 'Arjun', 'Reddy', 1, 102, '1995-03-14', '2015-01-10', 'Infantry', 'O-', '9876543214'),
(6, 'Deepak', 'Verma', 3, 104, '1989-07-23', '2008-10-25', 'Medical', 'B-', '9876543215'),
(7, 'Manoj', 'Joshi', 4, 103, '1987-06-17', '2007-12-01', 'Logistics', 'A-', '9876543216'),
(8, 'Ravi', 'Naik', 2, 101, '1991-09-09', '2010-02-22', 'Infantry', 'B+', '9876543217'),
(9, 'Harsh', 'Malhotra', 1, 105, '1993-05-08', '2014-04-14', 'Signals', 'AB-', '9876543218'),
(10, 'Kunal', 'Mehta', 5, 104, '1996-12-30', '2017-08-29', 'Artillery', 'A+', '9876543219');

 
 
 -- 2. Ranks
CREATE TABLE Ranks (
    rank_id INT PRIMARY KEY,
    rank_name VARCHAR(50),
    rank_code VARCHAR(10),
    pay_grade VARCHAR(10),
    level INT,
    is_commissioned BOOLEAN,
    promotion_years INT,
    insignia_image_url TEXT,
    abbreviation VARCHAR(10),
    hierarchy_order INT
);

 
INSERT INTO Ranks VALUES
(1, 'Lieutenant', 'LT', '7', 1, TRUE, 2, 'img/lt.png', 'LT', 10),
(2, 'Captain', 'CPT', '8', 2, TRUE, 3, 'img/cpt.png', 'CPT', 9),
(3, 'Major', 'MAJ', '10', 3, TRUE, 4, 'img/maj.png', 'MAJ', 8),
(4, 'Lt Colonel', 'LTC', '11', 4, TRUE, 5, 'img/ltc.png', 'LTC', 7),
(5, 'Colonel', 'COL', '12', 5, TRUE, 6, 'img/col.png', 'COL', 6),
(6, 'Brigadier', 'BRG', '13', 6, TRUE, 7, 'img/brg.png', 'BRG', 5),
(7, 'Major General', 'MG', '14', 7, TRUE, 8, 'img/mg.png', 'MG', 4),
(8, 'Lt General', 'LTG', '15', 8, TRUE, 9, 'img/ltg.png', 'LTG', 3),
(9, 'General', 'GEN', '16', 9, TRUE, 10, 'img/gen.png', 'GEN', 2),
(10, 'Field Marshal', 'FM', '17', 10, TRUE, 12, 'img/fm.png', 'FM', 1);


-- 3. Units 
CREATE TABLE Units (
    unit_id INT PRIMARY KEY,
    unit_name VARCHAR(100),
    unit_type VARCHAR(50),
    commanding_officer_id INT,
    location_id INT,
    established_date DATE,
    active_status BOOLEAN,
    total_strength INT,
    operational_zone VARCHAR(100),
    contact_email VARCHAR(100)
);


INSERT INTO Units VALUES
(101, '1st Infantry Division', 'Infantry', 5, 201, '1980-01-01', TRUE, 1200, 'Northern Command', 'inf1@army.in'),
(102, '3rd Armored Brigade', 'Armored', 3, 202, '1985-03-15', TRUE, 850, 'Western Command', 'arm3@army.in'),
(103, 'Signal Regiment Alpha', 'Signals', 4, 203, '1990-06-20', TRUE, 600, 'Central Command', 'sigalpha@army.in'),
(104, 'Medical Corps Bravo', 'Medical', 6, 204, '1995-08-05', TRUE, 500, 'Medical Command', 'medbravo@army.in'),
(105, 'Artillery Delta', 'Artillery', 10, 205, '1982-11-25', TRUE, 700, 'Southern Command', 'artdelta@army.in'),
(106, 'Engineer Battalion', 'Engineer', 7, 206, '2001-01-10', TRUE, 400, 'Eastern Command', 'engbat@army.in'),
(107, 'Mountain Division', 'Infantry', 8, 207, '1999-12-31', TRUE, 1000, 'Northern Command', 'mountain@army.in'),
(108, 'Logistics Wing Fox', 'Logistics', 9, 208, '2000-04-22', TRUE, 350, 'Logistics HQ', 'logfox@army.in'),
(109, 'Training Command HQ', 'Training', 2, 209, '1970-05-05', TRUE, 150, 'Army HQ', 'trainhq@army.in'),
(110, 'Rapid Response Unit', 'Special Forces', 1, 210, '2005-09-17', TRUE, 200, 'Special Ops', 'rru@army.in');

 
 -- 4. Operations
 CREATE TABLE Operations (
    operation_id INT PRIMARY KEY,
    operation_name VARCHAR(100),
    operation_type VARCHAR(50),
    start_date DATE,
    end_date DATE,
    location_id INT,
    commander_id INT,
    objective TEXT,
    result VARCHAR(100),
    casualties_reported INT
);


 
 INSERT INTO Operations VALUES
(301, 'Operation Vijay', 'War', '1999-05-08', '1999-07-26', 301, 5, 'Liberate Kargil sector', 'Victory', 527),
(302, 'Operation Parakram', 'Mobilization', '2001-12-18', '2003-10-16', 302, 4, 'Mass troop deployment', 'Standoff', 100),
(303, 'Operation Rahat', 'Rescue', '2013-06-16', '2013-07-05', 303, 6, 'Flood rescue in Uttarakhand', 'Success', 0),
(304, 'Operation Meghdoot', 'Occupation', '1984-04-13', NULL, 304, 7, 'Control Siachen Glacier', 'Ongoing', 200),
(305, 'Operation Cactus', 'Intervention', '1988-11-03', '1988-11-10', 305, 3, 'Maldives coup rescue', 'Success', 0),
(306, 'Operation All Out', 'Counter-terrorism', '2017-01-01', '2019-12-31', 306, 1, 'Eliminate terrorists in Kashmir', 'Ongoing', 250),
(307, 'Operation Maitri', 'Disaster Relief', '2015-04-25', '2015-05-20', 307, 8, 'Nepal earthquake relief', 'Success', 0),
(308, 'Operation Surya Hope', 'Evacuation', '2013-06-17', '2013-07-01', 308, 2, 'Flood rescue mission', 'Success', 10),
(309, 'Operation Trident', 'Naval Attack', '1971-12-04', '1971-12-06', 309, 9, 'Strike on Karachi port', 'Victory', 50),
(310, 'Operation Samudra Setu', 'Evacuation', '2020-05-05', '2020-07-01', 310, 10, 'Evacuate Indians during COVID-19', 'Success', 0);

-- 5. Locations
CREATE TABLE Locations (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(100),
    region VARCHAR(50),
    country VARCHAR(50),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    climate VARCHAR(50),
    terrain_type VARCHAR(50),
    strategic_importance TEXT,
    nearest_city VARCHAR(100)
);

 