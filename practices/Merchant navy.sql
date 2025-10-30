-- single line comments

/*
multi
line
comments

*/
# this is also used as a single line comment insql

/*
usage of commments

1.documentations:
- Explain the purpose of queries.
2. Debuggings:
- temporarily disble parts of code
3. collabrations:
- helps team understands eavh other's logics in a team..
*/

CREATE database merchantnavy;
 USE  MERCHANTNAVY;
 
 -- ---------------------------------database Queries-------------------------------------------------
-- 1. ShippingCompany
CREATE TABLE ShippingCompany (
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    country VARCHAR(100),
    registration_no VARCHAR(50) UNIQUE,
    address TEXT,
    contact_email VARCHAR(150),
    contact_phone VARCHAR(30),
    established_date DATE,
    fleet_size INT DEFAULT 0,
    ceo_name VARCHAR(150)
);

INSERT INTO ShippingCompany 
(name, country, registration_no, address, contact_email, contact_phone, established_date, fleet_size, ceo_name)
VALUES
('Oceanic Shipping Ltd', 'India', 'REG-001', 'Mumbai Port, Mumbai, India', 'info@oceanic.com', '+91-9876543210', '1998-05-12', 12, 'Rajesh Kapoor'),
('Blue Horizon Marine', 'Singapore', 'REG-002', 'HarbourFront, Singapore', 'contact@bluehorizon.sg', '+65-62345678', '2005-09-18', 8, 'Lim Wei Choon'),
('Atlantic Carriers Inc', 'UK', 'REG-003', 'Dockyard, Liverpool, UK', 'admin@atlanticcarriers.co.uk', '+44-151-223344', '1987-03-04', 20, 'Sarah Bennett'),
('Pacific Star Shipping', 'Australia', 'REG-004', 'Sydney Harbour, NSW', 'support@pacificstar.au', '+61-2-98765432', '2010-11-22', 6, 'James Peterson'),
('Global Maritime Corp', 'USA', 'REG-005', 'Pier 39, San Francisco, USA', 'office@globalmaritime.us', '+1-415-7654321', '1995-07-30', 15, 'Michael Harris');

select * from ShippingCompany;

drop table ShippingCompany;

-- 2. Vessel
CREATE TABLE Vessel (
    vessel_id INT PRIMARY KEY AUTO_INCREMENT,
    imo_number VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(150) NOT NULL,
    vessel_type VARCHAR(50),
    flag_state VARCHAR(100),
    gross_tonnage DECIMAL(10,2),
    deadweight_tonnage DECIMAL(12,2),
    built_year INT,
    owner_company_id INT,
    last_inspection_date DATE,
    FOREIGN KEY (owner_company_id) REFERENCES ShippingCompany(company_id)
);

INSERT INTO Vessel 
(imo_number, name, vessel_type, flag_state, gross_tonnage, deadweight_tonnage, built_year, owner_company_id, last_inspection_date)
VALUES
('IMO1234567', 'MV Ocean Queen', 'Bulk Carrier', 'India', 45000.50, 82000.00, 2001, 1, '2024-06-10'),
('IMO2234568', 'MV Blue Pearl', 'Container Ship', 'Singapore', 38000.75, 65000.00, 2008, 2, '2024-05-22'),
('IMO3234569', 'MT Atlantic Pride', 'Oil Tanker', 'UK', 60000.00, 105000.00, 2012, 3, '2024-07-15'),
('IMO4234570', 'MV Pacific Wave', 'LNG Carrier', 'Australia', 55000.20, 98000.00, 2015, 4, '2024-04-19'),
('IMO5234571', 'MV Global Spirit', 'Ro-Ro Ship', 'USA', 30000.00, 50000.00, 2018, 5, '2024-08-01');

select*from vessel;

drop table vessel;

-- 3. Ranks
CREATE TABLE Ranks (
    rank_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    grade_level INT,
    min_qualification VARCHAR(200),
    max_hours_per_watch INT,
    typical_responsibilities TEXT,
    promotable_to_rank_id INT,
    is_officer BOOLEAN DEFAULT FALSE,
    payscale_grade VARCHAR(50),
    required_certificates TEXT,
    FOREIGN KEY (promotable_to_rank_id) REFERENCES Ranks(rank_id)
);

INSERT INTO Ranks
(title, grade_level, min_qualification, max_hours_per_watch, typical_responsibilities, promotable_to_rank_id, is_officer, payscale_grade, required_certificates)
VALUES
('Captain', 1, 'Master Mariner License', 8, 'Overall command of the vessel', NULL, TRUE, 'A1', 'Master Certificate'),
('Chief Engineer', 2, 'Chief Engineer License', 8, 'Responsible for engine department', NULL, TRUE, 'B1', 'Engineer Certificate'),
('First Officer', 3, 'OOW License', 6, 'Navigation and safety duties', 1, TRUE, 'A2', 'OOW Certificate'),
('Bosun', 4, 'Deck Rating Certificate', 6, 'Deck crew supervision', 3, FALSE, 'C1', 'Deck Certificate'),
('Able Seaman', 5, 'Basic Safety Training', 4, 'Assist with deck operations', 4, FALSE, 'C2', 'BST Certificate');

select * from Ranks;

drop table Ranks;

-- 4. CrewMember
CREATE TABLE CrewMember (
    crew_id INT PRIMARY KEY AUTO_INCREMENT,
    seafarer_id VARCHAR(50) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    dob DATE,
    nationality VARCHAR(80),
    rank_id INT,
    join_date DATE,
    contract_id INT,
    contact_phone VARCHAR(30),
    FOREIGN KEY (rank_id) REFERENCES Ranks(rank_id),
    FOREIGN KEY (contract_id) REFERENCES EmploymentContract(contract_id)
);
INSERT INTO CrewMember 
(seafarer_id, first_name, last_name, dob, nationality, rank_id, join_date, contract_id, contact_phone)
VALUES
('SEA001', 'Amit', 'Sharma', '1980-04-15', 'India', 1, '2020-01-10', NULL, '+91-9876541111'),
('SEA002', 'John', 'Tan', '1985-08-20', 'Singapore', 2, '2019-03-14', NULL, '+65-91112222'),
('SEA003', 'David', 'Clark', '1990-12-05', 'UK', 3, '2021-07-01', NULL, '+44-7700112233'),
('SEA004', 'Peter', 'Nguyen', '1992-09-25', 'Australia', 4, '2022-05-11', NULL, '+61-412345678'),
('SEA005', 'Michael', 'Brown', '1995-01-30', 'USA', 5, '2023-02-15', NULL, '+1-4085556677');

select * from CrewMember ;

drop table CrewMember ;



