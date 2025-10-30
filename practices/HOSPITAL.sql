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

-- ---------------------------------database Queries-------------------------------------------------
 
 -- create a database first
 create database Hospital;
 
 -- to work on this database, yu need to use it first
 --  to excute (ctrl + enter)
 use Hospital;
 
 -- to deletet database
  drop database Hospital;
  
  -- ---------------------database analysis----------------------------------------------
  -- 1. patients table 
  create table patients (
  patientid  int auto_increment primary key,
  firstname varchar(50),
  lastname varchar(50),
  dateofbirth date,
  gender char(1),
  contactnumber varchar(15),
  email varchar(100),
  address TEXT,
  bloodtype varchar(3),
  emergencycontact varchar(100)
) ;
  
  -- 2. doctors table 
  create table doctors (
  doctorid int auto_increment primary key,
  firstname varchar(50),
  lastname varchar(50),
  specialization varchar (100),
  contactnumber varchar(15),
  email varchar(100),
  departmentid int,
  qualification text,
  yearofexperience int,
  availabilitystatus varchar(50),
  foreign key (departmentid) references department(departmentid)
  );
  
  -- 3. staff table 
  create table staff (
  staffid int auto_increment primary key,
  firstname varchar(50),
  lastname varchar(50),
  role varchar(50),
  departmentid int,
  contactnumber varchar(15),
  email varchar(100),
  hiredate date,
  shiftingtime varchar(50),
  salary decimal(10,2),
  foreign key(departmentid) references department(departmentid)
  );
  
  -- 4. appointments table
  create table appointment (
  appointmentid int auto_increment primary key,
  patientid int,
  dootorid int,
  appointmentdate datetime,
  reason text,
  status varchar(50),
  roomnumber varchar(10),
  bookingdate date,
  durationmintus int,
  notes text,
  foreign key(patientid) references patients(patientid),
  foreign key (doctor) references doctor(doctorid)
  );
  
  -- 5.Admission table 
  create table admissions (
  admissionid int auto_increment primary key,
   PatientID INT,
    AdmissionDate DATETIME,
    DischargeDate DATETIME,
    WardID INT,
    RoomNumber VARCHAR(10),
    AttendingDoctorID INT,
    ReasonForAdmission TEXT,
    Diagnosis TEXT,
    AdmissionStatus VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (AttendingDoctorID) REFERENCES Doctors(DoctorID)
    -- WardID could reference a Wards table if implemented
);
-- 6. Medications table
create table medications (
medicationid int auto_increment primary key,
name varchar(100),
genericname varchar(100),
manufacturer varchar(100),
dosageform varchar(50),
strentgth varchar(20),
unitprice decimal(10,2),
stockquantity int,
expirydate date,
storageinstructions text
);

-- 7. Treaments table
CREATE TABLE Treatments (
    TreatmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    TreatmentDate DATE,
    Description TEXT,
    MedicationID INT,
    Outcome TEXT,
    Cost DECIMAL(10,2),
    DepartmentID INT,
    FollowUpRequired BOOLEAN,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- 8. billing table
CREATE TABLE Billing (
    BillID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    AdmissionID INT,
    TotalAmount DECIMAL(10,2),
    AmountPaid DECIMAL(10,2),
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    Status VARCHAR(50),
    BillingClerkID INT,
    DiscountApplied DECIMAL(10,2),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (AdmissionID) REFERENCES Admissions(AdmissionID),
    FOREIGN KEY (BillingClerkID) REFERENCES Staff(StaffID)
);
-- 9. Inventory table

create table Inventory (
Itemid int auto_increment primary key,
itemname varchar(100),
category varchar(50),
quantityavailable int,
recorderlevel int,
supplierid int,
unitprice decimal(10,2),
lastrestockdate date,
expirydate date,
storagelocation varchar(100)
-- you can add a foreign key for supplierid if a supplier table is created
);
-- 10. Departments Table
CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    HeadOfDepartment INT,
    Location VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    NumberOfStaff INT,
    ServicesProvided TEXT,
    OpeningHours VARCHAR(100),
    Status VARCHAR(50),
    FOREIGN KEY (HeadOfDepartment) REFERENCES Doctors(DoctorID)
);