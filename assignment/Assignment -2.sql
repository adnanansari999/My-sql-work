create database Healthcare_System;

use Healthcare_System;

drop database Healthcare_System;

-- create table
-- 1.patients
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    contact VARCHAR(15),
    address TEXT
);

INSERT INTO patients (name, age, gender, contact, address) VALUES
('Alice Johnson', 29, 'Female', '1234567890', '123 Maple Street'),
('Bob Smith', 45, 'Male', '2345678901', '456 Oak Avenue'),
('Charlie Lee', 32, 'Male', '3456789012', '789 Pine Road'),
('Diana Prince', 27, 'Female', '4567890123', '321 Cedar Blvd'),
('Ethan Hunt', 38, 'Male', '5678901234', '654 Spruce Lane'),
('Fiona Davis', 52, 'Female', '6789012345', '987 Birch Way'),
('George Clark', 41, 'Male', '7890123456', '159 Walnut Dr'),
('Hannah Adams', 36, 'Female', '8901234567', '753 Chestnut Ct'),
('Ian Bell', 30, 'Male', '9012345678', '951 Redwood St'),
('Julia King', 26, 'Female', '0123456789', '852 Ash Terrace');

select * from patients;

truncate table patients;

drop table patients;

-- 2. Doctors
create table doctors (
doctor_id int auto_increment primary key,
name varchar(100),
specialty varchar(100),
phone varchar(15),
email varchar(100)
);

INSERT INTO doctors (name, specialty, phone, email) VALUES
('Dr. Sarah Miller', 'Cardiology', '1231111111', 'sarah.miller@hospital.com'),
('Dr. Tom Richards', 'Neurology', '1232222222', 'tom.richards@hospital.com'),
('Dr. Emily Carter', 'Pediatrics', '1233333333', 'emily.carter@hospital.com'),
('Dr. John Doe', 'Orthopedics', '1234444444', 'john.doe@hospital.com'),
('Dr. Linda Green', 'Dermatology', '1235555555', 'linda.green@hospital.com'),
('Dr. Mike Brown', 'Radiology', '1236666666', 'mike.brown@hospital.com'),
('Dr. Nancy White', 'Gastroenterology', '1237777777', 'nancy.white@hospital.com'),
('Dr. Paul Black', 'Oncology', '1238888888', 'paul.black@hospital.com'),
('Dr. Olivia Grey', 'Psychiatry', '1239999999', 'olivia.grey@hospital.com'),
('Dr. Kevin Stone', 'Urology', '1230000000', 'kevin.stone@hospital.com');

select * from doctors;

truncate table doctors;
 
 drop table doctors;

-- 3. Appointment
create table appointments (
appointment_id int auto_increment primary key,
patient_id int,
doctor_id int,
appointment_date date,
appointment_time time,
status varchar(50)
);

INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status) VALUES
(1, 1, '2025-10-01', '09:00:00', 'Completed'),
(2, 2, '2025-10-02', '10:00:00', 'Scheduled'),
(3, 3, '2025-10-03', '11:30:00', 'Cancelled'),
(4, 4, '2025-10-04', '12:00:00', 'Completed'),
(5, 5, '2025-10-05', '13:00:00', 'Scheduled'),
(6, 6, '2025-10-06', '14:00:00', 'Scheduled'),
(7, 7, '2025-10-07', '15:30:00', 'Completed'),
(8, 8, '2025-10-08', '09:30:00', 'No Show'),
(9, 9, '2025-10-09', '10:45:00', 'Scheduled'),
(10, 10, '2025-10-10', '11:15:00', 'Completed');

select * from appointments;

truncate table appointments;

drop table appointments;

-- 4.medical history
create table medical_history (
history_id int auto_increment primary key,
patient_id int,
diagnosis text,
treatment text,
notes text,
foreign key(patient_id) references patients(patient_id)
);

INSERT INTO medical_history (patient_id, diagnosis, treatment, notes) VALUES
(1, 'Hypertension', 'Medication A', 'Monitor blood pressure weekly'),
(2, 'Migraine', 'Pain relievers', 'Patient advised to reduce screen time'),
(3, 'Asthma', 'Inhaler', 'Avoid dust and pollen'),
(4, 'Fracture', 'Cast for 6 weeks', 'Follow-up in 2 weeks'),
(5, 'Acne', 'Topical cream', 'Apply twice daily'),
(6, 'Arthritis', 'Physiotherapy', 'Gentle exercises recommended'),
(7, 'Ulcer', 'Antacids', 'Avoid spicy food'),
(8, 'Cancer', 'Chemotherapy', 'Third round completed'),
(9, 'Anxiety', 'Therapy and medication', 'Weekly sessions ongoing'),
(10, 'Kidney Stones', 'Surgery', 'Post-op recovery positive');

select * from  medical_history;

truncate table medical_history;

drop table medical_history;


-- 5. Medications
create table medications (
medication_id int auto_increment primary key,
name varchar(100),
type varchar(50),
price decimal(10,2),
description text
);

INSERT INTO medications (name, type, price, description) VALUES
('Aspirin', 'Analgesic', 5.00, 'Used for pain relief and inflammation'),
('Lisinopril', 'ACE Inhibitor', 12.50, 'Treats high blood pressure'),
('Ventolin', 'Inhaler', 25.00, 'For asthma and breathing issues'),
('Amoxicillin', 'Antibiotic', 15.75, 'Used for bacterial infections'),
('Omeprazole', 'PPI', 10.00, 'Used to treat acid reflux'),
('Metformin', 'Antidiabetic', 20.00, 'Used to manage type 2 diabetes'),
('Zoloft', 'Antidepressant', 30.00, 'Treats depression and anxiety'),
('Ibuprofen', 'NSAID', 8.00, 'Pain and fever reducer'),
('Cetirizine', 'Antihistamine', 7.00, 'Used for allergy symptoms'),
('Warfarin', 'Anticoagulant', 18.00, 'Blood thinner to prevent clots');

select * from medications;

truncate table medications;

drop table medications;

-- 6. prescriptions
CREATE TABLE IF NOT EXISTS prescription (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    medication_id INT,
    date_provided DATE,
    dosage VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (medication_id) REFERENCES medications(medication_id)
);


INSERT INTO prescription (patient_id, medication_id, date_provided, dosage) VALUES
(1, 1, '2025-10-01', '1 tablet daily'),
(2, 2, '2025-10-02', '10 mg once a day'),
(3, 3, '2025-10-03', '2 puffs every 6 hours'),
(4, 4, '2025-10-04', '500 mg 3 times a day'),
(5, 5, '2025-10-05', '20 mg before meals'),
(6, 6, '2025-10-06', '500 mg twice a day'),
(7, 7, '2025-10-07', '50 mg daily'),
(8, 8, '2025-10-08', '400 mg as needed'),
(9, 9, '2025-10-09', '10 mg at bedtime'),
(10, 10, '2025-10-10', '5 mg once daily');


select * from prescription;

truncate table prescription;

drop table prescription;


-- 7. Bills
create table bills (
bill_id int auto_increment primary key,
patient_id int,
total_amount decimal(10,2),
payment_status  varchar(50),
bill_date date,

foreign key (patient_id) references patients(patient_id)
);

INSERT INTO bills (patient_id, total_amount, payment_status, bill_date) VALUES
(1, 1200.50, 'Paid', '2025-10-01'),
(2, 850.00, 'Pending', '2025-10-02'),
(3, 2200.75, 'Paid', '2025-10-03'),
(4, 1450.00, 'Unpaid', '2025-10-04'),
(5, 3100.00, 'Paid', '2025-10-05'),
(6, 760.25, 'Pending', '2025-10-06'),
(7, 980.00, 'Paid', '2025-10-07'),
(8, 2500.50, 'Paid', '2025-10-08'),
(9, 4100.00, 'Unpaid', '2025-10-09'),
(10, 600.00, 'Paid', '2025-10-10');

select * from bills;

truncate table bills;

drop table bills;
 
-- 8. staffs
create table staff (
staff_id int auto_increment primary key,
name varchar(100),
role varchar(50),
contact varchar(15),
shift varchar (50)
);

INSERT INTO staff (staff_id, name, role, contact, shift) VALUES
(1, 'James Hill', 'Nurse', '9876543210', 'Morning'),
(2, 'Samantha Cole', 'Receptionist', '9876543211', 'Evening'),
(3, 'David Young', 'Technician', '9876543212', 'Night'),
(4, 'Rachel Fox', 'Admin', '9876543213', 'Morning'),
(5, 'Brian Scott', 'Pharmacist', '9876543214', 'Evening'),
(6, 'Laura Reed', 'Nurse', '9876543215', 'Night'),
(7, 'Michael Gray', 'Lab Assistant', '9876543216', 'Morning'),
(8, 'Jessica Lane', 'Cleaner', '9876543217', 'Night'),
(9, 'Tom Blake', 'Security', '9876543218', 'Evening'),
(10, 'Nina Howard', 'Assistant', '9876543219', 'Morning');

select * from staff;

truncate table staff;

drop table staff;

-- 9. departments 
create table Departments (
department_id int primary key,
name varchar (100),
location varchar(100),
phone varchar(15)
);

INSERT INTO departments (department_id, name, location, phone) VALUES
(1, 'Cardiology', 'Building A, Floor 2', '1234567001'),
(2, 'Neurology', 'Building A, Floor 3', '1234567002'),
(3, 'Pediatrics', 'Building B, Floor 1', '1234567003'),
(4, 'Orthopedics', 'Building C, Floor 2', '1234567004'),
(5, 'Dermatology', 'Building B, Floor 3', '1234567005'),
(6, 'Radiology', 'Building D, Ground Floor', '1234567006'),
(7, 'Oncology', 'Building E, Floor 2', '1234567007'),
(8, 'Psychiatry', 'Building C, Floor 1', '1234567008'),
(9, 'Gastroenterology', 'Building B, Floor 2', '1234567009'),
(10, 'Urology', 'Building A, Floor 1', '1234567010');

select * from departments;

truncate table departments;

drop table departments;


-- 10. facilities
create table facilities (
facility_id int auto_increment primary key,
name varchar(100),
type varchar(50),
cost decimal(10,2),
availability_status varchar(50)
);

INSERT INTO facilities (facility_id, name, type, cost, availability_status) VALUES
(1, 'MRI Machine', 'Diagnostic', 500.00, 'Available'),
(2, 'CT Scanner', 'Diagnostic', 400.00, 'Under Maintenance'),
(3, 'X-Ray Room', 'Diagnostic', 150.00, 'Available'),
(4, 'Operation Theater 1', 'Surgical', 1000.00, 'In Use'),
(5, 'Operation Theater 2', 'Surgical', 1000.00, 'Available'),
(6, 'ICU Room 1', 'Critical Care', 800.00, 'Occupied'),
(7, 'ICU Room 2', 'Critical Care', 800.00, 'Available'),
(8, 'Laboratory', 'Testing', 300.00, 'Available'),
(9, 'Ultrasound Room', 'Diagnostic', 200.00, 'Available'),
(10, 'Physiotherapy Room', 'Rehabilitation', 250.00, 'Available');

select * from facilities;

truncate table facilities;

drop table facilities;




--  1. SELECT — Retrieve Specific Record

-- a) Patients older than 40
SELECT name, age, gender 
FROM patients
WHERE age > 40;

-- (b) Appointments that are “Scheduled”
SELECT appointment_id, patient_id, doctor_id, appointment_date, status
FROM appointments
WHERE status = 'Scheduled';

-- (c) Join example — Show patient name, doctor name, and appointment date
SELECT 
    p.name AS patient_name,
    d.name AS doctor_name,
    a.appointment_date,
    a.status
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;

-- (d) SELECT — Doctors by Specialty
SELECT doctor_id, name, specialty
FROM doctors
WHERE specialty IN ('Cardiology', 'Neurology');

-- 2. RENAME — Table & Column

-- (a) Rename a table
RENAME TABLE staff TO hospital_staff;

-- (b) Rename a column
ALTER TABLE doctors
CHANGE COLUMN phone contact_number VARCHAR(15);

-- 3. UPDATE — Modify Records

-- (a) Update patient’s contact number
UPDATE patients
SET contact = '9998887777'
WHERE name = 'Alice Johnson';

-- (b) Update bill payment status
UPDATE bills
SET payment_status = 'Paid'
WHERE patient_id = 2;

-- (c) UPDATE — Modify Staff Shift
UPDATE hospital_staff
SET shift = 'Night'
WHERE name = 'Samantha Cole';
 
 
-- 4. ALTER — Add, Modify, or Drop Columns

-- (a) Add a new column to patients
ALTER TABLE patients
ADD COLUMN email VARCHAR(100);

-- (b) Modify column data type in bills
ALTER TABLE bills
MODIFY COLUMN payment_status VARCHAR(20);

-- (c) Drop a column from facilities
ALTER TABLE facilities
DROP COLUMN cost;


-- 5. DELETE — Remove Specific Records

-- (a) Delete one patient record
DELETE FROM patients
WHERE name = 'Ian Bell';


-- (b) Delete cancelled appointments
DELETE FROM appointments
WHERE status = 'Cancelled';

-- (c) DELETE — Remove Unpaid Bills
DELETE FROM bills
WHERE payment_status = 'Unpaid';


-- 
-- Constraints & Clauses:

-- 1. Constraints

-- 1. PRIMARY KEY
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    gender VARCHAR(10) CHECK (gender IN ('Male', 'Female', 'Other')),
    contact VARCHAR(15) UNIQUE,
    address TEXT,
    email VARCHAR(100) UNIQUE
);

-- 2. FOREIGN KEY
CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    status VARCHAR(50) DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

-- 3. NOT NULL
CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100) NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- 4. UNIQUE (Ensures no duplicate values.)
ALTER TABLE medications
ADD CONSTRAINT unique_med_name UNIQUE (name);

-- 5 . CHECK
ALTER TABLE bills
ADD CONSTRAINT chk_amount CHECK (total_amount >= 0);

-- 6. DEFAULT
ALTER TABLE appointments
MODIFY COLUMN status VARCHAR(50) DEFAULT 'Scheduled';


-- 2. Clauses

-- 1. WHERE— Filters records
SELECT * FROM patients
WHERE age > 40 AND gender = 'Male';

-- 2. ORDER BY — Sorts records
SELECT p.name, b.total_amount
FROM bills b
JOIN patients p ON b.patient_id = p.patient_id
ORDER BY b.total_amount DESC;


-- 3. GROUP BY — Groups records for aggregation
SELECT payment_status, COUNT(*) AS total_bills
FROM bills
GROUP BY payment_status;

-- 4. HAVING — Filters grouped results
SELECT payment_status, SUM(total_amount) AS total_revenue
FROM bills
GROUP BY payment_status
HAVING total_revenue > 1000;

-- 5. LIMIT — Restricts number of rows returned
SELECT * FROM patients
ORDER BY age DESC
LIMIT 5;
