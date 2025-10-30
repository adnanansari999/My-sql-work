CREATE DATABASE SBI_BANK;
USE SBI_BANK;

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Date_Of_Birth DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO Customers (First_Name, Last_Name, Date_Of_Birth, Gender, Email, Phone, Address, City, Country) VALUES
('John', 'Doe', '1985-05-20', 'Male', 'john.doe@example.com', '1234567890', '123 Main St', 'Mumbai', 'India'),
('Jane', 'Smith', '1990-07-15', 'Female', 'jane.smith@example.com', '1234567891', '456 Oak St', 'Delhi', 'India'),
('Raj', 'Kumar', '1982-03-12', 'Male', 'raj.kumar@example.com', '1234567892', '789 Pine St', 'Chennai', 'India'),
('Anita', 'Shah', '1978-11-25', 'Female', 'anita.shah@example.com', '1234567893', '101 Maple St', 'Kolkata', 'India'),
('Suresh', 'Patel', '1995-09-10', 'Male', 'suresh.patel@example.com', '1234567894', '202 Birch St', 'Bangalore', 'India'),
('Meena', 'Gupta', '1988-12-30', 'Female', 'meena.gupta@example.com', '1234567895', '303 Cedar St', 'Hyderabad', 'India'),
('Vikram', 'Singh', '1983-08-22', 'Male', 'vikram.singh@example.com', '1234567896', '404 Spruce St', 'Pune', 'India'),
('Priya', 'Nair', '1992-01-05', 'Female', 'priya.nair@example.com', '1234567897', '505 Elm St', 'Ahmedabad', 'India'),
('Amit', 'Joshi', '1987-04-18', 'Male', 'amit.joshi@example.com', '1234567898', '606 Walnut St', 'Surat', 'India'),
('Sunita', 'Reddy', '1991-06-30', 'Female', 'sunita.reddy@example.com', '1234567899', '707 Chestnut St', 'Jaipur', 'India');

SELECT * FROM Customers;
truncate table Customers;
DROP TABLE Customers;

CREATE TABLE Accounts (
    Account_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Account_Type VARCHAR(50),
    Balance DECIMAL(15, 2),
    Interest_Rate DECIMAL(5, 2),
    Branch_Code VARCHAR(10),
    Open_Date DATE,
    Status VARCHAR(20),
    IFSC_Code VARCHAR(20),
    Last_Updated DATE
);

INSERT INTO Accounts (Customer_ID, Account_Type, Balance, Interest_Rate, Branch_Code, Open_Date, Status, IFSC_Code, Last_Updated) VALUES
(1, 'Savings', 50000.00, 3.5, 'SBI001', '2020-01-01', 'Active', 'SBIN0000001', '2024-10-01'),
(2, 'Current', 150000.00, 0.0, 'SBI002', '2019-03-15', 'Active', 'SBIN0000002', '2024-10-01'),
(3, 'Savings', 75000.00, 3.5, 'SBI003', '2021-07-20', 'Active', 'SBIN0000003', '2024-10-01'),
(4, 'Fixed Deposit', 200000.00, 6.0, 'SBI004', '2018-11-10', 'Active', 'SBIN0000004', '2024-10-01'),
(5, 'Savings', 120000.00, 3.5, 'SBI005', '2022-02-01', 'Active', 'SBIN0000005', '2024-10-01'),
(6, 'Savings', 98000.00, 3.5, 'SBI006', '2020-05-18', 'Active', 'SBIN0000006', '2024-10-01'),
(7, 'Current', 300000.00, 0.0, 'SBI007', '2017-09-25', 'Active', 'SBIN0000007', '2024-10-01'),
(8, 'Savings', 65000.00, 3.5, 'SBI008', '2021-12-05', 'Active', 'SBIN0000008', '2024-10-01'),
(9, 'Fixed Deposit', 500000.00, 6.5, 'SBI009', '2019-06-30', 'Active', 'SBIN0000009', '2024-10-01'),
(10, 'Savings', 85000.00, 3.5, 'SBI010', '2022-08-15', 'Active', 'SBIN0000010', '2024-10-01');

SELECT * FROM Accounts ;
truncate table Accounts;
DROP TABLE Accounts;

CREATE TABLE Branches (
    Branch_Code VARCHAR(10) PRIMARY KEY,
    Branch_Name VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    Phone VARCHAR(20),
    IFSC_Code VARCHAR(20),
    Manager_Name VARCHAR(100),
    Established_Date DATE
);

INSERT INTO Branches (Branch_Code, Branch_Name, Address, City, State, Country, Phone, IFSC_Code, Manager_Name, Established_Date) VALUES
('SBI001', 'Mumbai Main Branch', '123 Marine Drive', 'Mumbai', 'Maharashtra', 'India', '0221234567', 'SBIN0000001', 'Ramesh Kumar', '1980-01-01'),
('SBI002', 'Delhi Central', '45 Connaught Place', 'Delhi', 'Delhi', 'India', '0111234567', 'SBIN0000002', 'Sonal Gupta', '1985-06-15'),
('SBI003', 'Chennai South', '67 Anna Salai', 'Chennai', 'Tamil Nadu', 'India', '0441234567', 'SBIN0000003', 'Vijay Singh', '1990-03-20'),
('SBI004', 'Kolkata East', '89 Park Street', 'Kolkata', 'West Bengal', 'India', '0331234567', 'SBIN0000004', 'Meena Joshi', '1975-12-10'),
('SBI005', 'Bangalore North', '12 MG Road', 'Bangalore', 'Karnataka', 'India', '0801234567', 'SBIN0000005', 'Arun Sharma', '1995-07-25'),
('SBI006', 'Hyderabad West', '34 Jubilee Hills', 'Hyderabad', 'Telangana', 'India', '0401234567', 'SBIN0000006', 'Pooja Reddy', '1988-10-05'),
('SBI007', 'Pune Central', '56 FC Road', 'Pune', 'Maharashtra', 'India', '0201234567', 'SBIN0000007', 'Rajesh Iyer', '1992-04-18'),
('SBI008', 'Ahmedabad South', '78 CG Road', 'Ahmedabad', 'Gujarat', 'India', '0791234567', 'SBIN0000008', 'Anjali Mehta', '1983-11-30'),
('SBI009', 'Surat East', '90 Ring Road', 'Surat', 'Gujarat', 'India', '0261234567', 'SBIN0000009', 'Manish Patel', '1979-08-21'),
('SBI010', 'Jaipur West', '101 MI Road', 'Jaipur', 'Rajasthan', 'India', '0141234567', 'SBIN0000010', 'Kiran Desai', '1998-02-14');
 
 SELECT * FROM Branches ;
truncate table Branches;
DROP TABLE Branches;

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Branch_Code VARCHAR(10),
    Position VARCHAR(50),
    Date_Of_Birth DATE,
    Date_Of_Joining DATE,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Salary DECIMAL(15, 2)
);

INSERT INTO Employees (First_Name, Last_Name, Branch_Code, Position, Date_Of_Birth, Date_Of_Joining, Email, Phone, Salary) VALUES
('Raj', 'Verma', 'SBI001', 'Manager', '1975-05-10', '2000-06-01', 'raj.verma@sbi.com', '0229876543', 1500000.00),
('Sunita', 'Kumar', 'SBI002', 'Cashier', '1985-11-20', '2010-07-15', 'sunita.kumar@sbi.com', '0119876543', 500000.00),
('Amit', 'Singh', 'SBI003', 'Accountant', '1980-02-18', '2005-08-30', 'amit.singh@sbi.com', '0449876543', 700000.00),
('Neha', 'Sharma', 'SBI004', 'Manager', '1978-03-12', '2001-09-20', 'neha.sharma@sbi.com', '0339876543', 1400000.00),
('Vikram', 'Patel', 'SBI005', 'Loan Officer', '1983-04-25', '2008-10-10', 'vikram.patel@sbi.com', '0809876543', 900000.00),
('Priya', 'Reddy', 'SBI006', 'Cashier', '1990-12-30', '2015-11-15', 'priya.reddy@sbi.com', '0409876543', 450000.00),
('Suresh', 'Joshi', 'SBI007', 'Accountant', '1982-07-07', '2007-12-01', 'suresh.joshi@sbi.com', '0209876543', 650000.00),
('Anjali', 'Mehta', 'SBI008', 'Manager', '1977-09-15', '2003-01-20', 'anjali.mehta@sbi.com', '0799876543', 1450000.00),
('Rakesh', 'Desai', 'SBI009', 'Loan Officer', '1986-08-22', '2011-02-28', 'rakesh.desai@sbi.com', '0269876543', 850000.00),
('Kiran', 'Gupta', 'SBI010', 'Cashier', '1991-10-05', '2017-03-15', 'kiran.gupta@sbi.com', '0149876543', 480000.00);


 SELECT * FROM  Employees;
truncate table Employees;
DROP TABLE Employees;

CREATE TABLE Loans (
    Loan_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Loan_Type VARCHAR(50),
    Loan_Amount DECIMAL(15, 2),
    Interest_Rate DECIMAL(5, 2),
    Start_Date DATE,
    End_Date DATE,
    Status VARCHAR(20),
    EMI_Amount DECIMAL(15, 2),
    Remaining_Balance DECIMAL(15, 2)
);

INSERT INTO Loans (Customer_ID, Loan_Type, Loan_Amount, Interest_Rate, Start_Date, End_Date, Status, EMI_Amount, Remaining_Balance) VALUES
(1, 'Home Loan', 2000000.00, 7.5, '2020-01-01', '2030-01-01', 'Active', 15000.00, 1800000.00),
(2, 'Car Loan', 800000.00, 9.0, '2019-05-15', '2025-05-15', 'Active', 12000.00, 400000.00),
(3, 'Personal Loan', 500000.00, 12.0, '2021-07-20', '2023-07-20', 'Closed', 15000.00, 0.00),
(4, 'Education Loan', 600000.00, 10.0, '2018-11-10', '2024-11-10', 'Active', 8000.00, 200000.00),
(5, 'Home Loan', 1500000.00, 7.0, '2022-02-01', '2032-02-01', 'Active', 12000.00, 1400000.00),
(6, 'Car Loan', 700000.00, 8.5, '2020-05-18', '2026-05-18', 'Active', 11000.00, 500000.00),
(7, 'Personal Loan', 300000.00, 11.0, '2017-09-25', '2021-09-25', 'Closed', 9000.00, 0.00),
(8, 'Home Loan', 1800000.00, 7.3, '2021-12-05', '2031-12-05', 'Active', 14000.00, 1700000.00),
(9, 'Education Loan', 400000.00, 10.5, '2019-06-30', '2025-06-30', 'Active', 7000.00, 250000.00),
(10, 'Car Loan', 900000.00, 9.5, '2022-08-15', '2028-08-15', 'Active', 13000.00, 850000.00);
SELECT * FROM  Loans;
truncate table Loans;
DROP TABLE Loans;

CREATE TABLE Transactions (
    Transaction_ID INT PRIMARY KEY AUTO_INCREMENT,
    Account_ID INT,
    Transaction_Date DATETIME,
    Transaction_Type VARCHAR(50),
    Amount DECIMAL(15, 2),
    Balance_After DECIMAL(15, 2),
    Description VARCHAR(255),
    Mode VARCHAR(50),
    Status VARCHAR(20),
    Reference_Number VARCHAR(100)
);

INSERT INTO Transactions (Account_ID, Transaction_Date, Transaction_Type, Amount, Balance_After, Description, Mode, Status, Reference_Number) VALUES
(1, '2024-10-01 10:00:00', 'Deposit', 5000.00, 55000.00, 'Monthly Salary', 'Online', 'Completed', 'REF001'),
(2, '2024-10-02 11:00:00', 'Withdrawal', 20000.00, 130000.00, 'Cash Withdrawal', 'ATM', 'Completed', 'REF002'),
(3, '2024-09-30 09:30:00', 'Deposit', 10000.00, 85000.00, 'Freelance Payment', 'Cheque', 'Completed', 'REF003'),
(4, '2024-10-03 14:45:00', 'Interest Credit', 12000.00, 212000.00, 'FD Interest', 'Bank', 'Completed', 'REF004'),
(5, '2024-10-04 16:20:00', 'Withdrawal', 15000.00, 105000.00, 'Bill Payment', 'Online', 'Completed', 'REF005'),
(6, '2024-10-05 12:10:00', 'Deposit', 8000.00, 106000.00, 'Bonus', 'Online', 'Completed', 'REF006'),
(7, '2024-10-06 10:15:00', 'Withdrawal', 50000.00, 250000.00, 'Equipment Purchase', 'Cheque', 'Completed', 'REF007'),
(8, '2024-10-07 13:00:00', 'Deposit', 7000.00, 72000.00, 'Project Payment', 'Online', 'Completed', 'REF008'),
(9, '2024-10-08 15:30:00', 'Withdrawal', 20000.00, 230000.00, 'Travel Expenses', 'Online', 'Completed', 'REF009'),
(10, '2024-10-09 11:45:00', 'Deposit', 9000.00, 94000.00, 'Consulting Fees', 'Online', 'Completed', 'REF010');

SELECT * FROM  Transactions;
truncate table Transactions;
DROP TABLE Transactions;

CREATE TABLE Credit_Cards (
    Card_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Card_Number VARCHAR(16),
    Card_Type VARCHAR(50),
    Expiry_Date DATE,
    CVV VARCHAR(3),
    Credit_Limit DECIMAL(15, 2),
    Balance DECIMAL(15, 2),
    Status VARCHAR(20),
    Issued_Date DATE
);

INSERT INTO Credit_Cards (Customer_ID, Card_Number, Card_Type, Expiry_Date, CVV, Credit_Limit, Balance, Status, Issued_Date) VALUES
(1, '4111111111111111', 'Platinum', '2026-12-31', '123', 500000.00, 150000.00, 'Active', '2020-01-01'),
(2, '4222222222222222', 'Gold', '2025-11-30', '234', 300000.00, 50000.00, 'Active', '2019-03-15'),
(3, '4333333333333333', 'Silver', '2024-10-31', '345', 150000.00, 20000.00, 'Active', '2021-07-20'),
(4, '4444444444444444', 'Gold', '2026-05-31', '456', 350000.00, 120000.00, 'Active', '2018-11-10'),
(5, '4555555555555555', 'Platinum', '2027-08-31', '567', 600000.00, 300000.00, 'Active', '2022-02-01'),
(6, '4666666666666666', 'Silver', '2025-09-30', '678', 200000.00, 40000.00, 'Active', '2020-05-18'),
(7, '4777777777777777', 'Gold', '2024-12-31', '789', 320000.00, 70000.00, 'Active', '2017-09-25'),
(8, '4888888888888888', 'Platinum', '2026-07-31', '890', 550000.00, 180000.00, 'Active', '2021-12-05'),
(9, '4999999999999999', 'Silver', '2025-04-30', '901', 170000.00, 15000.00, 'Active', '2019-06-30'),
(10, '4000000000000000', 'Gold', '2027-03-31', '012', 400000.00, 100000.00, 'Active', '2022-08-15');

SELECT * FROM  Credit_Cards;
truncate table Credit_Cards;
DROP TABLE Credit_Cards;

CREATE TABLE Deposits (
    Deposit_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Deposit_Type VARCHAR(50),
    Amount DECIMAL(15, 2),
    Interest_Rate DECIMAL(5, 2),
    Start_Date DATE,
    Maturity_Date DATE,
    Status VARCHAR(20),
    Branch_Code VARCHAR(10),
    Renewal_Option VARCHAR(50)
);

INSERT INTO Deposits (Customer_ID, Deposit_Type, Amount, Interest_Rate, Start_Date, Maturity_Date, Status, Branch_Code, Renewal_Option) VALUES
(1, 'Fixed Deposit', 500000.00, 6.5, '2023-01-01', '2025-01-01', 'Active', 'SBI001', 'Auto-Renew'),
(2, 'Recurring Deposit', 20000.00, 5.5, '2022-06-15', '2024-06-15', 'Active', 'SBI002', 'Manual'),
(3, 'Fixed Deposit', 300000.00, 6.0, '2023-07-20', '2026-07-20', 'Active', 'SBI003', 'Auto-Renew'),
(4, 'Recurring Deposit', 15000.00, 5.0, '2021-11-10', '2024-11-10', 'Active', 'SBI004', 'Manual'),
(5, 'Fixed Deposit', 400000.00, 6.7, '2022-02-01', '2025-02-01', 'Active', 'SBI005', 'Auto-Renew'),
(6, 'Fixed Deposit', 250000.00, 6.3, '2023-05-18', '2026-05-18', 'Active', 'SBI006', 'Manual'),
(7, 'Recurring Deposit', 10000.00, 5.2, '2020-09-25', '2023-09-25', 'Matured', 'SBI007', 'Manual'),
(8, 'Fixed Deposit', 350000.00, 6.4, '2023-12-05', '2026-12-05', 'Active', 'SBI008', 'Auto-Renew'),
(9, 'Recurring Deposit', 12000.00, 5.1, '2022-06-30', '2025-06-30', 'Active', 'SBI009', 'Manual'),
(10, 'Fixed Deposit', 450000.00, 6.6, '2023-08-15', '2026-08-15', 'Active', 'SBI010', 'Auto-Renew');

SELECT * FROM Deposits;
truncate table Deposits;
DROP TABLE Deposits;

CREATE TABLE Bank_Officials (
    Official_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Position VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Branch_Code VARCHAR(10),
    Date_Of_Joining DATE,
    Status VARCHAR(20),
    Remarks TEXT
);

INSERT INTO Bank_Officials (First_Name, Last_Name, Position, Email, Phone, Branch_Code, Date_Of_Joining, Status, Remarks) VALUES
('Deepak', 'Malhotra', 'Regional Manager', 'deepak.malhotra@sbi.com', '0229988776', 'SBI001', '2015-05-01', 'Active', 'Experienced in retail banking'),
('Anita', 'Das', 'Compliance Officer', 'anita.das@sbi.com', '0119988776', 'SBI002', '2017-08-10', 'Active', 'Expert in regulations'),
('Rohit', 'Mehra', 'Risk Analyst', 'rohit.mehra@sbi.com', '0449988776', 'SBI003', '2018-03-15', 'Active', 'Specializes in credit risk'),
('Shweta', 'Joshi', 'Loan Manager', 'shweta.joshi@sbi.com', '0339988776', 'SBI004', '2016-11-20', 'Active', 'Handles home loans'),
('Manoj', 'Khan', 'IT Head', 'manoj.khan@sbi.com', '0809988776', 'SBI005', '2019-02-25', 'Active', 'Oversees IT infrastructure'),
('Pooja', 'Singh', 'HR Manager', 'pooja.singh@sbi.com', '0409988776', 'SBI006', '2017-10-30', 'Active', 'Responsible for recruitment'),
('Sanjay', 'Agarwal', 'Branch Manager', 'sanjay.agarwal@sbi.com', '0209988776', 'SBI007', '2014-07-15', 'Active', 'Experienced in sales'),
('Kavita', 'Rao', 'Finance Controller', 'kavita.rao@sbi.com', '0799988776', 'SBI008', '2016-05-10', 'Active', 'Manages branch finances'),
('Amitabh', 'Bhattacharya', 'Operations Head', 'amitabh.bhattacharya@sbi.com', '0269988776', 'SBI009', '2015-09-25', 'Active', 'Leads operations team'),
('Neelam', 'Shah', 'Customer Service Head', 'neelam.shah@sbi.com', '0149988776', 'SBI010', '2018-01-20', 'Active', 'Improves customer relations');

SELECT * FROM Bank_Officials;
truncate table Bank_Officials;
DROP table  Bank_Officials;

CREATE TABLE ATM_Locations (
    ATM_ID INT PRIMARY KEY AUTO_INCREMENT,
    Branch_Code VARCHAR(10),
    Location VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    Installation_Date DATE,
    Status VARCHAR(20),
    Daily_Transaction_Limit DECIMAL(15, 2),
    Contact_Number VARCHAR(20)
);

INSERT INTO ATM_Locations (Branch_Code, Location, City, State, Country, Installation_Date, Status, Daily_Transaction_Limit, Contact_Number) VALUES
('SBI001', 'Marine Drive', 'Mumbai', 'Maharashtra', 'India', '2010-05-01', 'Active', 100000.00, '0221230000'),
('SBI002', 'Connaught Place', 'Delhi', 'Delhi', 'India', '2012-06-15', 'Active', 80000.00, '0111230001'),
('SBI003', 'Anna Salai', 'Chennai', 'Tamil Nadu', 'India', '2013-07-20', 'Active', 90000.00, '0441230002'),
('SBI004', 'Park Street', 'Kolkata', 'West Bengal', 'India', '2009-11-10', 'Active', 75000.00, '0331230003'),
('SBI005', 'MG Road', 'Bangalore', 'Karnataka', 'India', '2015-02-01', 'Active', 95000.00, '0801230004'),
('SBI006', 'Jubilee Hills', 'Hyderabad', 'Telangana', 'India', '2011-05-18', 'Active', 85000.00, '0401230005'),
('SBI007', 'FC Road', 'Pune', 'Maharashtra', 'India', '2014-09-25', 'Active', 70000.00, '0201230006'),
('SBI008', 'CG Road', 'Ahmedabad', 'Gujarat', 'India', '2013-12-05', 'Active', 90000.00, '0791230007'),
('SBI009', 'Ring Road', 'Surat', 'Gujarat', 'India', '2010-06-30', 'Active', 65000.00, '0261230008'),
('SBI010', 'MI Road', 'Jaipur', 'Rajasthan', 'India', '2016-08-15', 'Active', 80000.00, '0141230009');

SELECT * FROM ATM_Locations;
truncate table ATM_Locations;
DROP table  ATM_Locations;




