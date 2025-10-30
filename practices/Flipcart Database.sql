CREATE DATABASE FLIPCART;
USE FLIPCART;

CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50),
    Email VARCHAR(100),
    Password_Hash VARCHAR(255),
    Full_Name VARCHAR(100),
    Phone VARCHAR(20),
    Created_At DATETIME,
    Last_Login DATETIME,
    Status VARCHAR(20),
    Address VARCHAR(255)
);

INSERT INTO Users (Username, Email, Password_Hash, Full_Name, Phone, Created_At, Last_Login, Status, Address) VALUES
('john_doe','john@example.com','hash1','John Doe','9876543210','2023-01-01 10:00:00','2024-10-01 09:00:00','Active','123 Main St, Mumbai'),
('jane_smith','jane@example.com','hash2','Jane Smith','9123456780','2023-02-15 11:20:00','2024-10-02 10:15:00','Active','45 Park Lane, Delhi'),
('alice_wong','alice@example.com','hash3','Alice Wong','9111223344','2023-03-05 08:30:00','2024-10-03 11:30:00','Active','78 Oak St, Bangalore'),
('bob_lee','bob@example.com','hash4','Bob Lee','9222334455','2023-04-10 09:45:00','2024-10-04 12:00:00','Inactive','12 Pine St, Chennai'),
('charlie_kim','charlie@example.com','hash5','Charlie Kim','9333445566','2023-05-25 16:00:00','2024-10-05 13:45:00','Active','34 Maple St, Pune'),
('david_patel','david@example.com','hash6','David Patel','9444556677','2023-06-10 11:10:00','2024-10-06 14:30:00','Active','56 Cedar St, Hyderabad'),
('eva_rao','eva@example.com','hash7','Eva Rao','9555667788','2023-07-25 07:35:00','2024-10-07 15:00:00','Active','90 Elm St, Kolkata'),
('frank_gupta','frank@example.com','hash8','Frank Gupta','9666778899','2023-08-15 13:00:00','2024-10-08 16:10:00','Active','101 Birch St, Ahmedabad'),
('grace_li','grace@example.com','hash9','Grace Li','9777889900','2023-09-30 18:20:00','2024-10-09 17:25:00','Active','202 Walnut St, Jaipur'),
('harry_john','harry@example.com','hash10','Harry John','9888990011','2023-10-22 20:15:00','2024-10-10 18:40:00','Active','303 Chestnut St, Surat');

select * from Users;
truncate table Users;
drop table Users;

CREATE TABLE Categories (
    Category_ID INT PRIMARY KEY AUTO_INCREMENT,
    Category_Name VARCHAR(100),
    Parent_Category_ID INT,
    Description TEXT,
    Created_At DATETIME,
    Updated_At DATETIME,
    Status VARCHAR(20),
    Image_URL VARCHAR(255),
    Seo_Keyword VARCHAR(100),
    Display_Ordering INT
);

INSERT INTO Categories (Category_Name, Parent_Category_ID, Description, Created_At, Updated_At, Status, Image_URL, Seo_Keyword, Display_Ordering) VALUES
('Electronics', NULL, 'Devices and gadgets', '2023-01-01 09:00:00','2024-01-01 09:00:00','Active','/images/electronics.jpg','electronics',1),
('Mobiles', 1, 'Smartphones and accessories', '2023-01-05 09:00:00','2024-01-05 09:00:00','Active','/images/mobiles.jpg','mobiles',1),
('Laptops', 1, 'Laptops and notebooks', '2023-01-10 09:00:00','2024-01-10 09:00:00','Active','/images/laptops.jpg','laptops',2),
('Home Appliances', NULL, 'Kitchen & home appliances', '2023-02-01 09:00:00','2024-02-01 09:00:00','Active','/images/homeapp.jpg','home appliances',2),
('Fashion', NULL, 'Clothing & accessories', '2023-03-01 09:00:00','2024-03-01 09:00:00','Active','/images/fashion.jpg','fashion',3),
('Men Clothing', 5, 'Clothes for men', '2023-03-05 09:00:00','2024-03-05 09:00:00','Active','/images/men.jpg','men clothing',1),
('Women Clothing', 5, 'Clothes for women', '2023-03-10 09:00:00','2024-03-10 09:00:00','Active','/images/women.jpg','women clothing',2),
('Books', NULL, 'Books & stationery', '2023-04-01 09:00:00','2024-04-01 09:00:00','Active','/images/books.jpg','books',4),
('Fiction', 8, 'Fiction books', '2023-04-05 09:00:00','2024-04-05 09:00:00','Active','/images/fiction.jpg','fiction',1),
('Non-Fiction', 8, 'Non fiction books', '2023-04-10 09:00:00','2024-04-10 09:00:00','Active','/images/nonfiction.jpg','nonfiction',2);

select * from Categories;
truncate table Categories;
drop table Categories;

CREATE TABLE Products (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Category_ID INT,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(12,2),
    Stock INT,
    SKU VARCHAR(50),
    Created_At DATETIME,
    Updated_At DATETIME,
    Status VARCHAR(20)
);

INSERT INTO Products (Category_ID, Name, Description, Price, Stock, SKU, Created_At, Updated_At, Status) VALUES
(2, 'iPhone 15', 'Latest Apple iPhone', 79999.00, 50, 'IP15-BLK-128', '2024-01-01 10:00:00','2024-10-01 10:00:00','Active'),
(2, 'Samsung Galaxy S24', 'Latest Samsung phone', 69999.00, 100, 'SGS24-GRY-128', '2024-02-01 10:00:00','2024-10-02 10:00:00','Active'),
(3, 'MacBook Air M2', 'Apple laptop', 119999.00, 30, 'MBA-M2-256', '2024-03-01 10:00:00','2024-10-03 10:00:00','Active'),
(3, 'Dell XPS 13', 'Dell laptop', 99999.00, 40, 'DXPS13-512', '2024-04-01 10:00:00','2024-10-04 10:00:00','Active'),
(4, 'LG Refrigerator', 'Double door fridge', 59999.00, 20, 'LG-REF-DD', '2024-05-01 10:00:00','2024-10-05 10:00:00','Active'),
(5, 'Men T-Shirt', 'Cotton T-shirt', 799.00, 200, 'MT-TS-XL', '2024-06-01 10:00:00','2024-10-06 10:00:00','Active'),
(6, 'Men Jeans', 'Denim jeans', 1199.00, 150, 'MJ-DN-32', '2024-07-01 10:00:00','2024-10-07 10:00:00','Active'),
(7, 'Women Dress', 'Floral dress', 1499.00, 120, 'WD-FL-8', '2024-08-01 10:00:00','2024-10-08 10:00:00','Active'),
(8, 'Harry Potter Book', 'Fiction novel', 499.00, 300, 'HP-BK-1', '2024-09-01 10:00:00','2024-10-09 10:00:00','Active'),
(9, 'Educated Book', 'Memoir by Tara Westover', 599.00, 250, 'EDU-BK-1', '2024-09-05 10:00:00','2024-10-10 10:00:00','Active');

select * from Products;
truncate table Products;
drop table Products;

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Order_Date DATETIME,
    Total_Amount DECIMAL(12,2),
    Status VARCHAR(20),
    Shipping_Address VARCHAR(255),
    Payment_Method VARCHAR(50),
    Payment_Status VARCHAR(20),
    Created_At DATETIME,
    Updated_At DATETIME
);

INSERT INTO Orders (User_ID, Order_Date, Total_Amount, Status, Shipping_Address, Payment_Method, Payment_Status, Created_At, Updated_At) VALUES
(1, '2024-10-01 10:15:00', 79999.00, 'Confirmed', '123 Main St, Mumbai', 'Credit Card', 'Paid', '2024-10-01 10:00:00','2024-10-01 10:15:00'),
(2, '2024-10-02 11:25:00', 69999.00, 'Confirmed', '45 Park Lane, Delhi', 'UPI', 'Paid', '2024-10-02 11:00:00','2024-10-02 11:25:00'),
(3, '2024-10-03 12:30:00', 119999.00, 'Pending', '78 Oak St, Bangalore', 'NetBanking', 'Pending', '2024-10-03 12:00:00','2024-10-03 12:30:00'),
(4, '2024-10-04 13:40:00', 99999.00, 'Shipped', '12 Pine St, Chennai', 'Credit Card', 'Paid', '2024-10-04 13:00:00','2024-10-04 13:40:00'),
(5, '2024-10-05 14:50:00', 59999.00, 'Confirmed', '34 Maple St, Pune', 'Debit Card', 'Paid', '2024-10-05 14:00:00','2024-10-05 14:50:00'),
(6, '2024-10-06 15:05:00', 799.00, 'Confirmed', '56 Cedar St, Hyderabad', 'Credit Card', 'Paid', '2024-10-06 15:00:00','2024-10-06 15:05:00'),
(7, '2024-10-07 16:15:00', 1499.00, 'Cancelled', '90 Elm St, Kolkata', 'UPI', 'Refunded', '2024-10-07 16:00:00','2024-10-07 16:15:00'),
(8, '2024-10-08 17:20:00', 499.00, 'Confirmed', '101 Birch St, Ahmedabad', 'Credit Card', 'Paid', '2024-10-08 17:00:00','2024-10-08 17:20:00'),
(9, '2024-10-09 18:25:00', 599.00, 'Confirmed', '202 Walnut St, Jaipur', 'Debit Card', 'Paid', '2024-10-09 18:00:00','2024-10-09 18:25:00'),
(10, '2024-10-10 19:30:00', 1200.00, 'Confirmed', '303 Chestnut St, Surat', 'Credit Card', 'Paid', '2024-10-10 19:00:00','2024-10-10 19:30:00');

select * from Orders;
truncate table Orders;
drop table Orders;

CREATE TABLE Order_Items (
    Order_Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    Unit_Price DECIMAL(12,2),
    Total_Price DECIMAL(12,2),
    Created_At DATETIME,
    Updated_At DATETIME,
    Status VARCHAR(20),
    Notes TEXT
);

INSERT INTO Order_Items (Order_ID, Product_ID, Quantity, Unit_Price, Total_Price, Created_At, Updated_At, Status, Notes) VALUES
(1,1,1,79999.00,79999.00,'2024-10-01 10:15:00','2024-10-01 10:15:00','Fulfilled',''),
(2,2,1,69999.00,69999.00,'2024-10-02 11:25:00','2024-10-02 11:25:00','Fulfilled',''),
(3,3,1,119999.00,119999.00,'2024-10-03 12:30:00','2024-10-03 12:30:00','Pending',''),
(4,4,1,99999.00,99999.00,'2024-10-04 13:40:00','2024-10-04 13:40:00','Shipped',''),
(5,5,1,59999.00,59999.00,'2024-10-05 14:50:00','2024-10-05 14:50:00','Fulfilled',''),
(6,6,1,799.00,799.00,'2024-10-06 15:05:00','2024-10-06 15:05:00','Fulfilled',''),
(7,7,1,1499.00,1499.00,'2024-10-07 16:15:00','2024-10-07 16:15:00','Cancelled',''),
(8,8,1,499.00,499.00,'2024-10-08 17:20:00','2024-10-08 17:20:00','Fulfilled',''),
(9,9,1,599.00,599.00,'2024-10-09 18:25:00','2024-10-09 18:25:00','Fulfilled',''),
(10,3,1,119999.00,119999.00,'2024-10-10 19:30:00','2024-10-10 19:30:00','Fulfilled','');

select * from Order_Items;
truncate table Order_Items;
drop table  Order_Items;

CREATE TABLE Payments_Transactions (
    Txn_ID INT PRIMARY KEY AUTO_INCREMENT,
    Payment_ID INT,
    Transaction_Date DATETIME,
    Amount DECIMAL(12,2),
    Payment_Method VARCHAR(50),
    Status VARCHAR(20),
    Gateway_Reference VARCHAR(100),
    Created_At DATETIME,
    Updated_At DATETIME,
    Notes TEXT
);

INSERT INTO Payments_Transactions (Payment_ID, Transaction_Date, Amount, Payment_Method, Status, Gateway_Reference, Created_At, Updated_At, Notes) VALUES
(1,'2024-10-01 10:10:00',79999.00,'Credit Card','Success','TXN_GATE_001','2024-10-01 10:10:00','2024-10-01 10:10:00',''),
(2,'2024-10-02 11:10:00',69999.00,'Credit Card','Success','TXN_GATE_002','2024-10-02 11:10:00','2024-10-02 11:10:00',''),
(3,'2024-10-03 12:05:00',119999.00,'Bank Transfer','Pending','TXN_GATE_003','2024-10-03 12:05:00','2024-10-03 12:05:00',''),
(4,'2024-10-04 13:15:00',99999.00,'Credit Card','Success','TXN_GATE_004','2024-10-04 13:15:00','2024-10-04 13:15:00',''),
(5,'2024-10-05 14:40:00',59999.00,'Debit Card','Success','TXN_GATE_005','2024-10-05 14:40:00','2024-10-05 14:40:00',''),
(6,'2024-10-06 15:00:00',799.00,'Credit Card','Success','TXN_GATE_006','2024-10-06 15:00:00','2024-10-06 15:00:00',''),
(7,'2024-10-07 16:05:00',1499.00,'UPI','Refunded','TXN_GATE_007','2024-10-07 16:05:00','2024-10-07 16:05:00','Order cancelled'),
(8,'2024-10-08 17:15:00',499.00,'Credit Card','Success','TXN_GATE_008','2024-10-08 17:15:00','2024-10-08 17:15:00',''),
(9,'2024-10-09 18:20:00',599.00,'Debit Card','Success','TXN_GATE_009','2024-10-09 18:20:00','2024-10-09 18:20:00',''),
(10,'2024-10-10 19:25:00',1200.00,'Credit Card','Success','TXN_GATE_010','2024-10-10 19:25:00','2024-10-10 19:25:00','');

select * from Payments_Transactions;
truncate table Payments_Transactions;
drop table  Payments_Transactions;

CREATE TABLE Reviews (
    Review_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Product_ID INT,
    Rating INT,
    Review_Text TEXT,
    Review_Date DATE,
    Status VARCHAR(20),
    Staff_Response TEXT,
    Response_Date DATE,
    Helpful_Count INT
);

INSERT INTO Reviews (User_ID, Product_ID, Rating, Review_Text, Review_Date, Status, Staff_Response, Response_Date, Helpful_Count) VALUES
(1,1,5,'Amazing phone, very fast.','2024-10-05','Published','Thank you!','2024-10-06',12),
(2,2,4,'Good performance, battery average.','2024-10-06','Published','We will improve.','2024-10-07',8),
(3,3,5,'Laptop is superb.','2024-10-07','Published','Glad you like it.','2024-10-08',10),
(4,4,3,'Too expensive for features.','2024-10-08','Published','We will review pricing.','2024-10-09',3),
(5,5,4,'Nice refrigerator.','2024-10-10','Published','Thank you for review.','2024-10-11',7),
(6,6,2,'T‑shirt quality poor.','2024-10-11','Published','We apologize.','2024-10-12',2),
(7,7,4,'Dress looks good.','2024-10-12','Published','Thanks!','2024-10-13',5),
(8,8,5,'Great book.','2024-10-13','Published','Glad you enjoyed.','2024-10-14',9),
(9,9,5,'Another great read.','2024-10-14','Published','Thank you!','2024-10-15',11),
(10,3,4,'Laptop okay.','2024-10-15','Published','Will improve.','2024-10-16',6);

select * from Reviews;
truncate table Reviews;
drop table  Reviews;

CREATE TABLE Wishlists (
    Wishlist_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Created_At DATETIME,
    Updated_At DATETIME,
    Name VARCHAR(100),
    Status VARCHAR(20),
    Notes TEXT,
    Private BOOLEAN,
    Share_Link VARCHAR(255),
    Item_Count INT
);

INSERT INTO Wishlists (User_ID, Created_At, Updated_At, Name, Status, Notes, Private, Share_Link, Item_Count) VALUES
(1,'2024-01-01 09:00:00','2024-10-01 09:00:00','John’s Wishlist','Active','','FALSE','link1',3),
(2,'2024-02-01 10:00:00','2024-10-02 10:00:00','Jane’s Picks','Active','','TRUE','link2',2),
(3,'2024-03-01 11:00:00','2024-10-03 11:00:00','Alice Favorites','Active','','FALSE','link3',4),
(4,'2024-04-01 12:00:00','2024-10-04 12:00:00','Bob’s List','Active','','TRUE','link4',1),
(5,'2024-05-01 13:00:00','2024-10-05 13:00:00','Charlie’s Collection','Active','','FALSE','link5',5),
(6,'2024-06-01 14:00:00','2024-10-06 14:00:00','David’s Want','Active','','TRUE','link6',2),
(7,'2024-07-01 15:00:00','2024-10-07 15:00:00','Eva’s Picks','Active','','FALSE','link7',3),
(8,'2024-08-01 16:00:00','2024-10-08 16:00:00','Frank’s List','Active','','TRUE','link8',4),
(9,'2024-09-01 17:00:00','2024-10-09 17:00:00','Grace’s Wishlist','Active','','FALSE','link9',3),
(10,'2024-10-01 18:00:00','2024-10-10 18:00:00','Harry’s Want List','Active','','TRUE','link10',2);

select * from Wishlists;
truncate table Wishlists;
drop table  Wishlists;

CREATE TABLE Wishlist_Items (
    Wishlist_Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Wishlist_ID INT,
    Product_ID INT,
    Added_At DATETIME,
    Notes TEXT,
    Status VARCHAR(20),
    Priority INT,
    Created_At DATETIME,
    Updated_At DATETIME,
    Quantity INT
);

INSERT INTO Wishlist_Items (Wishlist_ID, Product_ID, Added_At, Notes, Status, Priority, Created_At, Updated_At, Quantity) VALUES
(1,1,'2024-10-01 09:10:00','','Active',1,'2024-10-01 09:10:00','2024-10-01 09:10:00',1),
(1,3,'2024-10-01 09:15:00','','Active',2,'2024-10-01 09:15:00','2024-10-01 09:15:00',1),
(1,8,'2024-10-01 09:20:00','','Active',3,'2024-10-01 09:20:00','2024-10-01 09:20:00',1),
(2,2,'2024-10-02 10:10:00','','Active',1,'2024-10-02 10:10:00','2024-10-02 10:10:00',1),
(2,5,'2024-10-02 10:15:00','','Active',2,'2024-10-02 10:15:00','2024-10-02 10:15:00',1),
(3,4,'2024-10-03 11:10:00','','Active',1,'2024-10-03 11:10:00','2024-10-03 11:10:00',1),
(3,2,'2024-10-03 11:15:00','','Active',2,'2024-10-03 11:15:00','2024-10-03 11:15:00',1),
(4,9,'2024-10-04 12:10:00','','Active',1,'2024-10-04 12:10:00','2024-10-04 12:10:00',1),
(5,6,'2024-10-05 13:10:00','','Active',1,'2024-10-05 13:10:00','2024-10-05 13:10:00',1),
(6,7,'2024-10-06 14:10:00','','Active',1,'2024-10-06 14:10:00','2024-10-06 14:10:00',1);

select * from Wishlist_Items;
truncate table Wishlist_Items;
drop table  Wishlist_Items;

CREATE TABLE Shipping (
    Shipping_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT,
    Shipper_Name VARCHAR(100),
    Tracking_Number VARCHAR(100),
    Shipping_Date DATETIME,
    Estimated_Delivery DATETIME,
    Actual_Delivery DATETIME,
    Status VARCHAR(20),
    Shipping_Cost DECIMAL(12,2),
    Notes TEXT
);

INSERT INTO Shipping (Order_ID, Shipper_Name, Tracking_Number, Shipping_Date, Estimated_Delivery, Actual_Delivery, Status, Shipping_Cost, Notes) VALUES
(1,'DHL','DHL001','2024-10-01 12:00:00','2024-10-04 12:00:00','2024-10-04 11:50:00','Delivered',500.00,''),
(2,'FedEx','FDX002','2024-10-02 13:00:00','2024-10-05 13:00:00','2024-10-05 12:55:00','Delivered',450.00,''),
(3,'BlueDart','BDT003','2024-10-03 14:00:00','2024-10-07 14:00:00',NULL,'In Transit',700.00,''),
(4,'DTDC','DTDC004','2024-10-04 15:00:00','2024-10-08 15:00:00',NULL,'In Transit',600.00,''),
(5,'DHL','DHL005','2024-10-05 16:00:00','2024-10-09 16:00:00','2024-10-09 15:45:00','Delivered',550.00,''),
(6,'FedEx','FDX006','2024-10-06 17:00:00','2024-10-10 17:00:00','2024-10-10 16:50:00','Delivered',300.00,''),
(7,'BlueDart','BDT007','2024-10-07 18:00:00','2024-10-11 18:00:00',NULL,'In Transit',250.00,''),
(8,'DTDC','DTDC008','2024-10-08 19:00:00','2024-10-12 19:00:00',NULL,'In Transit',200.00,''),
(9,'DHL','DHL009','2024-10-09 20:00:00','2024-10-13 20:00:00','2024-10-13 19:55:00','Delivered',400.00,''),
(10,'FedEx','FDX010','2024-10-10 21:00:00','2024-10-14 21:00:00',NULL,'In Transit',450.00,'');


select * from Shipping ;
truncate table Shipping;
drop table  Shipping;

