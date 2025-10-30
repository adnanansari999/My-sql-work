CREATE DATABASE TAJ_HOTEL;
USE TAJ_HOTEL;

CREATE TABLE Guests (
    Guest_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Country VARCHAR(50),
    Passport_Number VARCHAR(50),
    Date_Of_Birth DATE,
    Gender VARCHAR(10),
    Loyalty_Member BOOLEAN
);

INSERT INTO Guests (First_Name, Last_Name, Email, Phone, Country, Passport_Number, Date_Of_Birth, Gender, Loyalty_Member) VALUES
('Rahul','Sharma','rahul.sharma@example.com','9876543210','India','P1234567','1985-05-10','Male',TRUE),
('Priya','Singh','priya.singh@example.com','9123456780','India','P2345678','1990-08-22','Female',FALSE),
('John','Doe','john.doe@example.com','1122334455','USA','US987654','1978-12-05','Male',TRUE),
('Anna','Lee','anna.lee@example.com','2233445566','UK','UK123456','1982-03-18','Female',FALSE),
('Carlos','Garcia','carlos.garcia@example.com','3344556677','Spain','ES543210','1975-11-11','Male',TRUE),
('Maria','Rossi','maria.rossi@example.com','4455667788','Italy','IT112233','1988-07-01','Female',FALSE),
('Xiao','Wang','xiao.wang@example.com','5566778899','China','CH987321','1992-01-25','Male',TRUE),
('Fatima','Ali','fatima.ali@example.com','6677889900','UAE','AE223344','1987-09-30','Female',FALSE),
('Liam','Murphy','liam.murphy@example.com','7788990011','Ireland','IE334455','1979-06-20','Male',TRUE),
('Nina','Kumar','nina.kumar@example.com','8899001122','India','P3456789','1995-02-14','Female',TRUE);

SELECT * FROM Guests;
TRUNCATE table Guests;
DROP TABLE Guests;

CREATE TABLE Rooms (
    Room_ID INT PRIMARY KEY AUTO_INCREMENT,
    Room_Number VARCHAR(10),
    Floor INT,
    Room_Type VARCHAR(50),
    Beds INT,
    Rate_Per_Night DECIMAL(10,2),
    Status VARCHAR(20),
    View VARCHAR(50),
    Description TEXT,
    Last_Maintenance_Date DATE
);

INSERT INTO Rooms (Room_Number, Floor, Room_Type, Beds, Rate_Per_Night, Status, View, Description, Last_Maintenance_Date) VALUES
('101',1,'Deluxe',2,5000.00,'Available','Sea View','Spacious deluxe room','2024-05-01'),
('102',1,'Deluxe',2,5000.00,'Occupied','Garden View','Deluxe room with garden view','2024-04-25'),
('201',2,'Suite',3,12000.00,'Available','Sea View','Luxury suite','2024-06-10'),
('202',2,'Suite',3,12000.00,'Occupied','City View','Suite room','2024-05-30'),
('301',3,'Presidential',4,25000.00,'Available','Sea View','Top-floor suite','2024-07-01'),
('302',3,'Presidential',4,25000.00,'Under Maintenance','City View','Presidential suite','2024-06-20'),
('103',1,'Standard',1,3000.00,'Available','Garden View','Standard single room','2024-05-15'),
('104',1,'Standard',1,3000.00,'Occupied','City View','Standard room','2024-04-28'),
('203',2,'Deluxe',2,5000.00,'Available','Pool View','Deluxe pool view','2024-06-05'),
('204',2,'Deluxe',2,5000.00,'Occupied','Garden View','Deluxe garden view','2024-05-22');

SELECT * FROM Rooms;
TRUNCATE table Rooms;
DROP TABLE Rooms;

CREATE TABLE Bookings (
    Booking_ID INT PRIMARY KEY AUTO_INCREMENT,
    Guest_ID INT,
    Room_ID INT,
    Checkin_Date DATE,
    Checkout_Date DATE,
    Num_Adults INT,
    Num_Children INT,
    Total_Amount DECIMAL(12,2),
    Booking_Status VARCHAR(20),
    Booking_Date DATETIME
);

INSERT INTO Bookings (Guest_ID, Room_ID, Checkin_Date, Checkout_Date, Num_Adults, Num_Children, Total_Amount, Booking_Status, Booking_Date) VALUES
(1,101,'2024-10-01','2024-10-05',2,0,20000.00,'Confirmed','2024-09-01 10:00:00'),
(2,102,'2024-10-02','2024-10-06',2,1,22000.00,'CheckedIn','2024-09-02 11:00:00'),
(3,201,'2024-10-10','2024-10-15',3,2,60000.00,'Confirmed','2024-09-10 09:00:00'),
(4,202,'2024-10-12','2024-10-14',2,0,24000.00,'CheckedOut','2024-09-12 12:00:00'),
(5,301,'2024-11-01','2024-11-05',2,1,100000.00,'Confirmed','2024-10-01 13:00:00'),
(6,302,'2024-11-10','2024-11-14',3,1,120000.00,'Cancelled','2024-10-05 14:00:00'),
(7,103,'2024-12-01','2024-12-03',1,0,6000.00,'Confirmed','2024-11-01 15:00:00'),
(8,104,'2024-12-05','2024-12-08',1,1,9000.00,'Confirmed','2024-11-05 16:00:00'),
(9,203,'2024-12-10','2024-12-15',2,2,25000.00,'Confirmed','2024-11-10 17:00:00'),
(10,204,'2024-12-12','2024-12-14',2,0,10000.00,'CheckedIn','2024-11-12 18:00:00');

SELECT * FROM Bookings;
TRUNCATE table Bookings;
DROP TABLE Bookings;

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Booking_ID INT,
    Paid_Amount DECIMAL(12,2),
    Payment_Date DATETIME,
    Payment_Method VARCHAR(50),
    Status VARCHAR(20),
    Transaction_ID VARCHAR(100),
    Currency VARCHAR(10),
    Notes TEXT,
    Paid_By_Guest_ID INT
);

INSERT INTO Payments (Booking_ID, Paid_Amount, Payment_Date, Payment_Method, Status, Transaction_ID, Currency, Notes, Paid_By_Guest_ID) VALUES
(1,20000.00,'2024-09-01 10:10:00','Credit Card','Completed','TXN001','INR','Full payment',1),
(2,22000.00,'2024-09-02 11:10:00','Credit Card','Completed','TXN002','INR','Full payment',2),
(3,60000.00,'2024-09-10 09:05:00','Bank Transfer','Pending','TXN003','INR','','3'),
(4,24000.00,'2024-09-12 12:15:00','Credit Card','Completed','TXN004','INR','Full payment',4),
(5,100000.00,'2024-10-01 13:20:00','Credit Card','Completed','TXN005','INR','Full payment',5),
(6,120000.00,'2024-10-05 14:15:00','Credit Card','Cancelled','TXN006','INR','Booking cancelled',6),
(7,6000.00,'2024-11-01 15:10:00','Cash','Completed','TXN007','INR','Full payment',7),
(8,9000.00,'2024-11-05 16:05:00','Credit Card','Completed','TXN008','INR','Full payment',8),
(9,25000.00,'2024-11-10 17:15:00','Credit Card','Completed','TXN009','INR','Full payment',9),
(10,10000.00,'2024-11-12 18:05:00','Credit Card','Completed','TXN010','INR','Full payment',10);

SELECT * FROM Payments;
TRUNCATE table Payments;
DROP TABLE Payments;

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Role VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Hire_Date DATE,
    Salary DECIMAL(12,2),
    Branch VARCHAR(100),
    Status VARCHAR(20)
);

INSERT INTO Staff (First_Name, Last_Name, Role, Email, Phone, Hire_Date, Salary, Branch, Status) VALUES
('Amit','Mehta','Manager','amit.mehta@tajhotel.com','9811112222','2015-05-01',1500000.00,'Mumbai','Active'),
('Rina','Patel','Receptionist','rina.patel@tajhotel.com','9822223333','2018-03-15',600000.00,'Mumbai','Active'),
('Sunil','Kumar','Housekeeping','sunil.kumar@tajhotel.com','9833334444','2017-08-20',450000.00,'Mumbai','Active'),
('Nisha','Verma','Chef','nisha.verma@tajhotel.com','9844445555','2016-11-10',800000.00,'Mumbai','Active'),
('Deepak','Shah','Waiter','deepak.shah@tajhotel.com','9855556666','2019-07-01',400000.00,'Mumbai','Active'),
('Priyanka','Ghosh','Concierge','priyanka.ghosh@tajhotel.com','9866667777','2020-01-05',500000.00,'Mumbai','Active'),
('Vikram','Rao','Security','vikram.rao@tajhotel.com','9877778888','2014-04-25',550000.00,'Mumbai','Active'),
('Kavita','Singh','Receptionist','kavita.singh@tajhotel.com','9888889999','2018-09-30',620000.00,'Mumbai','Active'),
('Rahul','Joshi','Bellboy','rahul.joshi@tajhotel.com','9899990000','2021-02-14',350000.00,'Mumbai','Active'),
('Neha','Kapoor','Manager','neha.kapoor@tajhotel.com','9800001111','2015-12-01',1600000.00,'Mumbai','Active');


SELECT * FROM Staff;
TRUNCATE table Staff;
DROP TABLE Staff;

CREATE TABLE Services (
    Service_ID INT PRIMARY KEY AUTO_INCREMENT,
    Service_Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2),
    Availability BOOLEAN,
    Service_Type VARCHAR(50),
    Staff_ID INT,
    Duration_Minutes INT,
    Created_At DATETIME,
    Status VARCHAR(20)
);

INSERT INTO Services (Service_Name, Description, Price, Availability, Service_Type, Staff_ID, Duration_Minutes, Created_At, Status) VALUES
('Spa','Full body spa session',5000.00,TRUE,'Wellness',4,60,'2024-01-01 09:00:00','Active'),
('Breakfast','Buffet breakfast',1000.00,TRUE,'Food',2,120,'2024-01-01 06:00:00','Active'),
('Airport Pickup','Car transfer from airport',2000.00,TRUE,'Transport',7,45,'2024-01-01 00:00:00','Active'),
('Laundry','Clothes washing and ironing',500.00,TRUE,'Housekeeping',3,60,'2024-01-01 08:00:00','Active'),
('Room Service','In-room food service',800.00,TRUE,'Food',2,30,'2024-01-01 06:00:00','Active'),
('Gym','Gym access',0.00,TRUE,'Wellness',NULL,0,'2024-01-01 00:00:00','Active'),
('Pool Access','Swimming pool usage',0.00,TRUE,'Leisure',NULL,0,'2024-01-01 00:00:00','Active'),
('Laundry Express','Express laundry',800.00,TRUE,'Housekeeping',3,30,'2024-01-01 08:30:00','Active'),
('Birthday Cake','Custom cake order',1500.00,TRUE,'Food',4,120,'2024-01-01 10:00:00','Active'),
('City Tour','Guided tour of city',3000.00,TRUE,'Tourism',7,180,'2024-01-01 07:00:00','Active');

SELECT * FROM Services;
TRUNCATE table Services;
DROP TABLE Services;

CREATE TABLE Room_Service_Orders (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    Booking_ID INT,
    Service_ID INT,
    Order_Date DATETIME,
    Quantity INT,
    Total_Price DECIMAL(12,2),
    Status VARCHAR(20),
    Delivered_By_Staff INT,
    Delivered_Time DATETIME,
    Notes TEXT
);

INSERT INTO Room_Service_Orders (Booking_ID, Service_ID, Order_Date, Quantity, Total_Price, Status, Delivered_By_Staff, Delivered_Time, Notes) VALUES
(1,5,'2024-10-02 20:00:00',1,800.00,'Delivered',2,'2024-10-02 20:30:00','Food order'),
(1,2,'2024-10-02 08:00:00',2,2000.00,'Delivered',2,'2024-10-02 08:30:00','Breakfast'),
(2,3,'2024-10-03 09:30:00',1,2000.00,'Pending',7,NULL,'Airport pickup'),
(3,4,'2024-10-11 11:00:00',3,1500.00,'Delivered',3,'2024-10-11 12:30:00','Laundry'),
(4,1,'2024-10-13 15:00:00',1,5000.00,'Delivered',4,'2024-10-13 16:30:00','Spa'),
(5,9,'2024-11-02 19:00:00',1,1500.00,'Delivered',4,'2024-11-02 20:30:00','Cake'),
(7,2,'2024-12-02 09:00:00',1,1000.00,'Delivered',2,'2024-12-02 09:30:00','Breakfast'),
(8,5,'2024-12-06 21:00:00',1,800.00,'Delivered',2,'2024-12-06 21:45:00','Dinner'),
(9,10,'2024-12-12 07:00:00',1,3000.00,'Pending',7,NULL,'City tour'),
(10,8,'2024-12-13 10:00:00',2,1600.00,'Delivered',3,'2024-12-13 11:30:00','Express laundry');

SELECT * FROM Room_Service_Orders;
TRUNCATE table Room_Service_Orders;
DROP TABLE Room_Service_Orders;

CREATE TABLE Reviews (
    Review_ID INT PRIMARY KEY AUTO_INCREMENT,
    Guest_ID INT,
    Booking_ID INT,
    Rating INT,
    Review_Text TEXT,
    Review_Date DATE,
    Status VARCHAR(20),
    Staff_Response TEXT,
    Response_Date DATE,
    Useful_Count INT
);

INSERT INTO Reviews (Guest_ID, Booking_ID, Rating, Review_Text, Review_Date, Status, Staff_Response, Response_Date, Useful_Count) VALUES
(1,1,5,'Excellent stay, very comfortable.','2024-10-06','Published','Thank you!','2024-10-07',10),
(2,2,4,'Good service but room was a bit small.','2024-10-07','Published','We appreciate feedback.','2024-10-08',5),
(3,3,5,'Luxurious and top class.','2024-10-15','Published','Thank you!','2024-10-16',12),
(4,4,3,'Average food.','2024-10-14','Published','We will improve.','2024-10-15',3),
(5,5,5,'Best experience ever.','2024-11-06','Published','So glad you enjoyed.','2024-11-07',15),
(6,6,2,'Bad room maintenance.','2024-11-14','Published','We apologize.','2024-11-15',2),
(7,7,4,'Nice breakfast and staff.','2024-12-03','Published','Thank you.','2024-12-04',7),
(8,8,5,'Very friendly staff.','2024-12-08','Published','We appreciate.','2024-12-09',9),
(9,9,5,'Great views and service.','2024-12-15','Published','Thank you!','2024-12-16',13),
(10,10,4,'Good but a little noisy.','2024-12-14','Published','We are sorry for noise.','2024-12-15',6);

SELECT * FROM Reviews;
TRUNCATE table Reviews;
DROP TABLE Reviews;

CREATE TABLE Amenities (
    Amenity_ID INT PRIMARY KEY AUTO_INCREMENT,
    Amenity_Name VARCHAR(100),
    Description TEXT,
    Price_Daily DECIMAL(10,2),
    Availability BOOLEAN,
    Created_At DATETIME,
    Status VARCHAR(20),
    Staff_ID INT,
    Max_Users INT,
    Notes TEXT
);

INSERT INTO Amenities (Amenity_Name, Description, Price_Daily, Availability, Created_At, Status, Staff_ID, Max_Users, Notes) VALUES
('Gym','Full access to gym',0.00,TRUE,'2024-01-01 08:00:00','Active',NULL,50,'24/7 access'),
('Pool','Indoor swimming pool','0.00',TRUE,'2024-01-01 08:00:00','Active',NULL,100,'Heated pool'),
('Spa','Relaxation spa','5000.00',TRUE,'2024-01-01 09:00:00','Active',4,20,'Full spa services'),
('Jacuzzi','Hot tub access','1000.00',TRUE,'2024-01-01 08:30:00','Active',4,10,'Shared hot tub'),
('Sauna','Steam & sauna','500.00',TRUE,'2024-01-01 08:00:00','Active',4,15,'Sauna sessions'),
('Kids Club','Kids activity center','0.00',TRUE,'2024-01-01 10:00:00','Active',2,30,'Supervised by staff'),
('Business Center','Computers and printers','0.00',TRUE,'2024-01-01 08:00:00','Active',5,20,'Free for guests'),
('Conference Room','Meeting hall','2000.00',TRUE,'2024-01-01 07:00:00','Active',5,100,'Book in advance'),
('Laundry','Clothing service','0.00',TRUE,'2024-01-01 08:00:00','Active',3,200,'Use service'),
('Parking','Car parking','0.00',TRUE,'2024-01-01 00:00:00','Active',7,100,'Valet parking available');

SELECT * FROM Amenities;
TRUNCATE table Amenities;
DROP TABLE Amenities;

CREATE TABLE Housekeeping_Schedule (
    Schedule_ID INT PRIMARY KEY AUTO_INCREMENT,
    Staff_ID INT,
    Room_ID INT,
    Scheduled_Date DATE,
    Status VARCHAR(20),
    Notes TEXT,
    Created_At DATETIME,
    Completed_At DATETIME,
    Shift VARCHAR(20),
    Supervisor_ID INT
);

INSERT INTO Housekeeping_Schedule (Staff_ID, Room_ID, Scheduled_Date, Status, Notes, Created_At, Completed_At, Shift, Supervisor_ID) VALUES
(3,101,'2024-10-02','Completed','Cleaned and changed linens','2024-10-02 09:00:00','2024-10-02 10:30:00','Morning',2),
(3,102,'2024-10-03','Completed','Dust, vacuum','2024-10-03 09:00:00','2024-10-03 10:00:00','Morning',2),
(3,201,'2024-10-11','Pending','','2024-10-11 08:00:00',NULL,'Morning',2),
(3,202,'2024-10-13','Completed','Deep clean','2024-10-13 09:00:00','2024-10-13 11:00:00','Morning',2),
(3,301,'2024-11-02','Pending','','2024-11-02 08:00:00',NULL,'Morning',2),
(3,302,'2024-11-10','Scheduled','','2024-11-10 08:00:00',NULL,'Morning',2),
(3,103,'2024-12-02','Completed','Basic clean','2024-12-02 09:00:00','2024-12-02 09:45:00','Morning',2),
(3,104,'2024-12-06','Completed','Change towels','2024-12-06 09:00:00','2024-12-06 09:30:00','Morning',2),
(3,203,'2024-12-12','Pending','','2024-12-12 08:00:00',NULL,'Morning',2),
(3,204,'2024-12-13','Scheduled','','2024-12-13 09:00:00',NULL,'Morning',2);

SELECT * FROM Housekeeping_Schedule;
TRUNCATE table Housekeeping_Schedule;
DROP TABLE Housekeeping_Schedule;



