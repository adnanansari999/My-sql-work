create database drddo;
use drddo;
CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50),
    Email VARCHAR(100),
    Password_Hash VARCHAR(255),
    Created_At DATETIME,
    Last_Login DATETIME,
    Status VARCHAR(20),
    Country VARCHAR(50),
    User_Type VARCHAR(30),
    Profile_Pic_URL VARCHAR(255)
);

INSERT INTO Users (Username, Email, Password_Hash, Created_At, Last_Login, Status, Country, User_Type, Profile_Pic_URL) VALUES
('user1', 'user1@example.com', 'hash1', '2023-01-01 10:00:00', '2024-10-01 08:00:00', 'active', 'USA', 'admin', ''),
('user2', 'user2@example.com', 'hash2', '2023-02-15 12:30:00', '2024-10-05 09:00:00', 'active', 'UK', 'user', ''),
('user3', 'user3@example.com', 'hash3', '2023-03-20 14:00:00', '2024-10-06 11:00:00', 'inactive', 'Canada', 'user', ''),
('user4', 'user4@example.com', 'hash4', '2023-04-10 15:00:00', '2024-09-30 13:00:00', 'active', 'Australia', 'user', ''),
('user5', 'user5@example.com', 'hash5', '2023-05-25 16:00:00', '2024-10-02 07:00:00', 'active', 'India', 'admin', ''),
('user6', 'user6@example.com', 'hash6', '2023-06-15 17:00:00', '2024-10-03 10:00:00', 'active', 'Germany', 'user', ''),
('user7', 'user7@example.com', 'hash7', '2023-07-05 18:00:00', '2024-10-04 08:30:00', 'active', 'France', 'user', ''),
('user8', 'user8@example.com', 'hash8', '2023-08-10 19:00:00', '2024-10-05 09:30:00', 'inactive', 'Japan', 'user', ''),
('user9', 'user9@example.com', 'hash9', '2023-09-15 20:00:00', '2024-10-06 10:30:00', 'active', 'Russia', 'admin', ''),
('user10', 'user10@example.com', 'hash10', '2023-10-01 21:00:00', '2024-10-07 11:30:00', 'active', 'Brazil', 'user', '');

select * from Users;
truncate table Users;
drop table Users;

CREATE TABLE Products (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Available BOOLEAN,
    Release_Date DATE,
    Manufacturer VARCHAR(100),
    Rating FLOAT,
    Stock_Count INT,
    Description TEXT
);

INSERT INTO Products (Product_Name, Category, Price, Available, Release_Date, Manufacturer, Rating, Stock_Count, Description) VALUES
('Product1', 'CategoryA', 100.00, TRUE, '2023-01-15', 'Maker1', 4.5, 100, 'Description1'),
('Product2', 'CategoryB', 200.00, TRUE, '2023-02-15', 'Maker2', 4.0, 200, 'Description2'),
('Product3', 'CategoryA', 150.00, FALSE, '2023-03-15', 'Maker3', 3.5, 150, 'Description3'),
('Product4', 'CategoryC', 300.00, TRUE, '2023-04-15', 'Maker1', 4.8, 300, 'Description4'),
('Product5', 'CategoryB', 250.00, TRUE, '2023-05-15', 'Maker2', 4.2, 250, 'Description5'),
('Product6', 'CategoryA', 350.00, FALSE, '2023-06-15', 'Maker3', 4.7, 350, 'Description6'),
('Product7', 'CategoryC', 400.00, TRUE, '2023-07-15', 'Maker1', 4.3, 400, 'Description7'),
('Product8', 'CategoryB', 450.00, TRUE, '2023-08-15', 'Maker2', 4.9, 450, 'Description8'),
('Product9', 'CategoryA', 500.00, TRUE, '2023-09-15', 'Maker3', 4.6, 500, 'Description9'),
('Product10', 'CategoryC', 550.00, TRUE, '2023-10-15', 'Maker1', 4.4, 550, 'Description10');

select * from Products;
truncate table Products;
drop table Products;

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Product_ID INT,
    Order_Date DATETIME,
    Quantity INT,
    Total_Price DECIMAL(10, 2),
    Status VARCHAR(20),
    Shipping_Address VARCHAR(255),
    Payment_Method VARCHAR(50),
    Tracking_Number VARCHAR(100)
);

INSERT INTO Orders (User_ID, Product_ID, Order_Date, Quantity, Total_Price, Status, Shipping_Address, Payment_Method, Tracking_Number) VALUES
(1, 1, '2024-01-01 10:00:00', 1, 100.00, 'Shipped', 'Address1', 'Credit Card', 'TRK001'),
(2, 2, '2024-01-02 11:00:00', 2, 400.00, 'Delivered', 'Address2', 'Paypal', 'TRK002'),
(3, 3, '2024-01-03 12:00:00', 1, 150.00, 'Pending', 'Address3', 'Credit Card', 'TRK003'),
(4, 4, '2024-01-04 13:00:00', 3, 900.00, 'Cancelled', 'Address4', 'Credit Card', 'TRK004'),
(5, 5, '2024-01-05 14:00:00', 1, 250.00, 'Delivered', 'Address5', 'Debit Card', 'TRK005'),
(6, 6, '2024-01-06 15:00:00', 1, 350.00, 'Shipped', 'Address6', 'Credit Card', 'TRK006'),
(7, 7, '2024-01-07 16:00:00', 2, 800.00, 'Delivered', 'Address7', 'Paypal', 'TRK007'),
(8, 8, '2024-01-08 17:00:00', 1, 450.00, 'Shipped', 'Address8', 'Credit Card', 'TRK008'),
(9, 9, '2024-01-09 18:00:00', 1, 500.00, 'Pending', 'Address9', 'Paypal', 'TRK009'),
(10, 10, '2024-01-10 19:00:00', 3, 1650.00, 'Shipped', 'Address10', 'Credit Card', 'TRK010');

select * from Orders;
truncate table Orders;
drop table Orders;

CREATE TABLE Reviews (
    Review_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT,
    User_ID INT,
    Rating INT,
    Review_Text TEXT,
    Review_Date DATE,
    Verified_Purchase BOOLEAN,
    Helpful_Count INT,
    Status VARCHAR(20),
    Response TEXT
);

INSERT INTO Reviews (Product_ID, User_ID, Rating, Review_Text, Review_Date, Verified_Purchase, Helpful_Count, Status, Response) VALUES
(1, 1, 5, 'Excellent product', '2024-01-15', TRUE, 10, 'approved', ''),
(2, 2, 4, 'Good quality', '2024-01-16', TRUE, 8, 'approved', ''),
(3, 3, 3, 'Average', '2024-01-17', TRUE, 3, 'approved', ''),
(4, 4, 5, 'Highly recommend', '2024-01-18', TRUE, 15, 'approved', ''),
(5, 5, 4, 'Works well', '2024-01-19', TRUE, 5, 'approved', ''),
(6, 6, 5, 'Exceeded expectations', '2024-01-20', TRUE, 12, 'approved', ''),
(7, 7, 2, 'Not satisfied', '2024-01-21', TRUE, 2, 'pending', ''),
(8, 8, 4, 'Good value', '2024-01-22', TRUE, 6, 'approved', ''),
(9, 9, 3, 'Okay product', '2024-01-23', TRUE, 4, 'approved', ''),
(10, 10, 5, 'Excellent!', '2024-01-24', TRUE, 20, 'approved', '');

select * from Reviews;
truncate table Reviews;
drop table Reviews;

CREATE TABLE Categories (
    Category_ID INT PRIMARY KEY AUTO_INCREMENT,
    Category_Name VARCHAR(50),
    Description TEXT,
    Created_At DATE,
    Updated_At DATE,
    Parent_Category_ID INT,
    Status VARCHAR(20),
    Created_By INT,
    Modified_By INT,
    Icon_URL VARCHAR(255)
);

INSERT INTO Categories (Category_Name, Description, Created_At, Updated_At, Parent_Category_ID, Status, Created_By, Modified_By, Icon_URL) VALUES
('CategoryA', 'Description A', '2023-01-01', '2023-01-10', NULL, 'active', 1, 1, ''),
('CategoryB', 'Description B', '2023-02-01', '2023-02-10', NULL, 'active', 2, 2, ''),
('CategoryC', 'Description C', '2023-03-01', '2023-03-10', 1, 'active', 3, 3, ''),
('CategoryD', 'Description D', '2023-04-01', '2023-04-10', 2, 'active', 4, 4, ''),
('CategoryE', 'Description E', '2023-05-01', '2023-05-10', NULL, 'active', 5, 5, ''),
('CategoryF', 'Description F', '2023-06-01', '2023-06-10', 3, 'active', 6, 6, ''),
('CategoryG', 'Description G', '2023-07-01', '2023-07-10', NULL, 'active', 7, 7, ''),
('CategoryH', 'Description H', '2023-08-01', '2023-08-10', 4, 'active', 8, 8, ''),
('CategoryI', 'Description I', '2023-09-01', '2023-09-10', 5, 'active', 9, 9, ''),
('CategoryJ', 'Description J', '2023-10-01', '2023-10-10', NULL, 'active', 10, 10, '');

select * from Categories;
truncate table Categories;
drop table Categories;

CREATE TABLE Suppliers (
    Supplier_ID INT PRIMARY KEY AUTO_INCREMENT,
    Supplier_Name VARCHAR(100),
    Contact_Name VARCHAR(100),
    Contact_Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(50),
    Country VARCHAR(50),
    Postal_Code VARCHAR(20),
    Status VARCHAR(20)
);

INSERT INTO Suppliers (Supplier_Name, Contact_Name, Contact_Email, Phone, Address, City, Country, Postal_Code, Status) VALUES
('Supplier1', 'Contact1', 'contact1@supplier.com', '1234567890', 'Address1', 'City1', 'Country1', '11111', 'active'),
('Supplier2', 'Contact2', 'contact2@supplier.com', '1234567891', 'Address2', 'City2', 'Country2', '22222', 'active'),
('Supplier3', 'Contact3', 'contact3@supplier.com', '1234567892', 'Address3', 'City3', 'Country3', '33333', 'active'),
('Supplier4', 'Contact4', 'contact4@supplier.com', '1234567893', 'Address4', 'City4', 'Country4', '44444', 'active'),
('Supplier5', 'Contact5', 'contact5@supplier.com', '1234567894', 'Address5', 'City5', 'Country5', '55555', 'active'),
('Supplier6', 'Contact6', 'contact6@supplier.com', '1234567895', 'Address6', 'City6', 'Country6', '66666', 'active'),
('Supplier7', 'Contact7', 'contact7@supplier.com', '1234567896', 'Address7', 'City7', 'Country7', '77777', 'active'),
('Supplier8', 'Contact8', 'contact8@supplier.com', '1234567897', 'Address8', 'City8', 'Country8', '88888', 'active'),
('Supplier9', 'Contact9', 'contact9@supplier.com', '1234567898', 'Address9', 'City9', 'Country9', '99999', 'active'),
('Supplier10', 'Contact10', 'contact10@supplier.com', '1234567899', 'Address10', 'City10', 'Country10', '10101', 'active');

select * from Suppliers;
truncate table Suppliers;
drop table Suppliers;

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT,
    Payment_Date DATETIME,
    Amount DECIMAL(10, 2),
    Payment_Method VARCHAR(50),
    Payment_Status VARCHAR(20),
    Transaction_ID VARCHAR(100),
    User_ID INT,
    Currency VARCHAR(10),
    Notes TEXT
);

INSERT INTO Payments (Order_ID, Payment_Date, Amount, Payment_Method, Payment_Status, Transaction_ID, User_ID, Currency, Notes) VALUES
(1, '2024-01-01 11:00:00', 100.00, 'Credit Card', 'Completed', 'TXN001', 1, 'USD', ''),
(2, '2024-01-02 12:00:00', 400.00, 'Paypal', 'Completed', 'TXN002', 2, 'USD', ''),
(3, '2024-01-03 13:00:00', 150.00, 'Credit Card', 'Pending', 'TXN003', 3, 'USD', ''),
(4, '2024-01-04 14:00:00', 900.00, 'Credit Card', 'Failed', 'TXN004', 4, 'USD', ''),
(5, '2024-01-05 15:00:00', 250.00, 'Debit Card', 'Completed', 'TXN005', 5, 'USD', ''),
(6, '2024-01-06 16:00:00', 350.00, 'Credit Card', 'Completed', 'TXN006', 6, 'USD', ''),
(7, '2024-01-07 17:00:00', 800.00, 'Paypal', 'Completed', 'TXN007', 7, 'USD', ''),
(8, '2024-01-08 18:00:00', 450.00, 'Credit Card', 'Completed', 'TXN008', 8, 'USD', ''),
(9, '2024-01-09 19:00:00', 500.00, 'Paypal', 'Pending', 'TXN009', 9, 'USD', ''),
(10, '2024-01-10 20:00:00', 1650.00, 'Credit Card', 'Completed', 'TXN010', 10, 'USD', '');

select * from Payments;
truncate table Payments;
drop table Payments;

CREATE TABLE Shipments (
    Shipment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT,
    Shipment_Date DATETIME,
    Carrier VARCHAR(50),
    Tracking_Number VARCHAR(100),
    Status VARCHAR(20),
    Estimated_Delivery DATE,
    Delivery_Date DATE,
    Shipping_Cost DECIMAL(10, 2),
    Notes TEXT
);

INSERT INTO Shipments (Order_ID, Shipment_Date, Carrier, Tracking_Number, Status, Estimated_Delivery, Delivery_Date, Shipping_Cost, Notes) VALUES
(1, '2024-01-02 10:00:00', 'Carrier1', 'TRK001', 'Delivered', '2024-01-05', '2024-01-05', 10.00, ''),
(2, '2024-01-03 11:00:00', 'Carrier2', 'TRK002', 'Delivered', '2024-01-06', '2024-01-06', 15.00, ''),
(3, '2024-01-04 12:00:00', 'Carrier3', 'TRK003', 'Pending', '2024-01-07', NULL, 20.00, ''),
(4, '2024-01-05 13:00:00', 'Carrier1', 'TRK004', 'Cancelled', NULL, NULL, 0.00, ''),
(5, '2024-01-06 14:00:00', 'Carrier2', 'TRK005', 'Delivered', '2024-01-09', '2024-01-09', 12.00, ''),
(6, '2024-01-07 15:00:00', 'Carrier3', 'TRK006', 'Shipped', '2024-01-10', NULL, 18.00, ''),
(7, '2024-01-08 16:00:00', 'Carrier1', 'TRK007', 'Delivered', '2024-01-11', '2024-01-11', 14.00, ''),
(8, '2024-01-09 17:00:00', 'Carrier2', 'TRK008', 'Shipped', '2024-01-12', NULL, 16.00, ''),
(9, '2024-01-10 18:00:00', 'Carrier3', 'TRK009', 'Pending', '2024-01-13', NULL, 19.00, ''),
(10, '2024-01-11 19:00:00', 'Carrier1', 'TRK010', 'Shipped', '2024-01-14', NULL, 20.00, '');

select * from Shipments;
truncate table Shipments;
drop table Shipments;

CREATE TABLE Inventory (
    Inventory_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT,
    Warehouse_ID INT,
    Quantity INT,
    Last_Updated DATETIME,
    Reorder_Level INT,
    Supplier_ID INT,
    Cost_Price DECIMAL(10, 2),
    Selling_Price DECIMAL(10, 2),
    Status VARCHAR(20)
);

INSERT INTO Inventory (Product_ID, Warehouse_ID, Quantity, Last_Updated, Reorder_Level, Supplier_ID, Cost_Price, Selling_Price, Status) VALUES
(1, 1, 100, '2024-10-01 10:00:00', 20, 1, 80.00, 100.00, 'active'),
(2, 1, 200, '2024-10-02 11:00:00', 30, 2, 160.00, 200.00, 'active'),
(3, 2, 150, '2024-10-03 12:00:00', 25, 3, 120.00, 150.00, 'active'),
(4, 2, 300, '2024-10-04 13:00:00', 50, 1, 250.00, 300.00, 'active'),
(5, 3, 250, '2024-10-05 14:00:00', 40, 2, 200.00, 250.00, 'active'),
(6, 3, 350, '2024-10-06 15:00:00', 60, 3, 280.00, 350.00, 'active'),
(7, 4, 400, '2024-10-07 16:00:00', 70, 1, 320.00, 400.00, 'active'),
(8, 4, 450, '2024-10-08 17:00:00', 75, 2, 360.00, 450.00, 'active'),
(9, 5, 500, '2024-10-09 18:00:00', 80, 3, 400.00, 500.00, 'active'),
(10, 5, 550, '2024-10-10 19:00:00', 90, 1, 440.00, 550.00, 'active');

select * from Inventory ;
truncate table Inventory;
drop table Inventory;

CREATE TABLE Warehouses (
    Warehouse_ID INT PRIMARY KEY AUTO_INCREMENT,
    Warehouse_Name VARCHAR(100),
    Location VARCHAR(255),
    Manager VARCHAR(100),
    Capacity INT,
    Contact_Phone VARCHAR(20),
    Email VARCHAR(100),
    Status VARCHAR(20),
    Created_At DATETIME,
    Updated_At DATETIME
);

INSERT INTO Warehouses (Warehouse_Name, Location, Manager, Capacity, Contact_Phone, Email, Status, Created_At, Updated_At) VALUES
('Warehouse1', 'Location1', 'Manager1', 1000, '1111111111', 'w1@example.com', 'active', '2023-01-01 08:00:00', '2024-10-01 10:00:00'),
('Warehouse2', 'Location2', 'Manager2', 2000, '2222222222', 'w2@example.com', 'active', '2023-02-01 08:00:00', '2024-10-02 11:00:00'),
('Warehouse3', 'Location3', 'Manager3', 1500, '3333333333', 'w3@example.com', 'active', '2023-03-01 08:00:00', '2024-10-03 12:00:00'),
('Warehouse4', 'Location4', 'Manager4', 2500, '4444444444', 'w4@example.com', 'active', '2023-04-01 08:00:00', '2024-10-04 13:00:00'),
('Warehouse5', 'Location5', 'Manager5', 3000, '5555555555', 'w5@example.com', 'active', '2023-05-01 08:00:00', '2024-10-05 14:00:00'),
('Warehouse6', 'Location6', 'Manager6', 3500, '6666666666', 'w6@example.com', 'active', '2023-06-01 08:00:00', '2024-10-06 15:00:00'),
('Warehouse7', 'Location7', 'Manager7', 4000, '7777777777', 'w7@example.com', 'active', '2023-07-01 08:00:00', '2024-10-07 16:00:00'),
('Warehouse8', 'Location8', 'Manager8', 4500, '8888888888', 'w8@example.com', 'active', '2023-08-01 08:00:00', '2024-10-08 17:00:00'),
('Warehouse9', 'Location9', 'Manager9', 5000, '9999999999', 'w9@example.com', 'active', '2023-09-01 08:00:00', '2024-10-09 18:00:00'),
('Warehouse10', 'Location10', 'Manager10', 6000, '1010101010', 'w10@example.com', 'active', '2023-10-01 08:00:00', '2024-10-10 19:00:00');

select * from Warehouses ;
truncate table Warehouses;
drop table Warehouses;



