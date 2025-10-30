Create Database Google;
Use Google;
CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50),
    Email VARCHAR(100),
    Password_Hash VARCHAR(255),
    Created_At DATETIME,
    Last_Login DATETIME,
    Country VARCHAR(50),
    Language VARCHAR(20),
    Status VARCHAR(20),
    Profile_Picture VARCHAR(255)
);

INSERT INTO Users (Username, Email, Password_Hash, Created_At, Last_Login, Country, Language, Status, Profile_Picture) VALUES
('alice', 'alice@example.com', 'hash1', '2023-01-10 08:30:00', '2024-04-10 09:00:00', 'USA', 'en', 'active', 'alice_pic.jpg'),
('bob', 'bob@example.com', 'hash2', '2023-02-15 10:00:00', '2024-04-11 10:15:00', 'UK', 'en', 'active', 'bob_pic.jpg'),
('carol', 'carol@example.com', 'hash3', '2023-03-20 14:20:00', '2024-04-12 11:30:00', 'Canada', 'fr', 'active', 'carol_pic.jpg'),
('dave', 'dave@example.com', 'hash4', '2023-04-01 09:45:00', '2024-04-13 12:00:00', 'Australia', 'en', 'inactive', 'dave_pic.jpg'),
('eve', 'eve@example.com', 'hash5', '2023-05-05 16:00:00', '2024-04-14 13:45:00', 'India', 'hi', 'active', 'eve_pic.jpg'),
('frank', 'frank@example.com', 'hash6', '2023-06-10 11:10:00', '2024-04-15 14:30:00', 'Germany', 'de', 'active', 'frank_pic.jpg'),
('grace', 'grace@example.com', 'hash7', '2023-07-25 07:35:00', '2024-04-16 15:00:00', 'France', 'fr', 'active', 'grace_pic.jpg'),
('heidi', 'heidi@example.com', 'hash8', '2023-08-15 13:00:00', '2024-04-17 16:10:00', 'Brazil', 'pt', 'active', 'heidi_pic.jpg'),
('ivan', 'ivan@example.com', 'hash9', '2023-09-30 18:20:00', '2024-04-18 17:25:00', 'Russia', 'ru', 'active', 'ivan_pic.jpg'),
('judy', 'judy@example.com', 'hash10', '2023-10-22 20:15:00', '2024-04-19 18:40:00', 'Japan', 'jp', 'active', 'judy_pic.jpg');

select * from Users;
truncate table Users;
drop table Users;

CREATE TABLE Google_Products (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Launch_Date DATE,
    User_Base_Millions INT,
    Revenue_Millions DECIMAL(12,2),
    Status VARCHAR(50),
    Platform VARCHAR(50),
    Description TEXT,
    Website_URL VARCHAR(255)
);

INSERT INTO Google_Products (Product_Name, Category, Launch_Date, User_Base_Millions, Revenue_Millions, Status, Platform, Description, Website_URL) VALUES
('Google Search', 'Search Engine', '1997-09-15', 5000, 2000.00, 'Active', 'Web', 'Search engine product', 'https://www.google.com'),
('Gmail', 'Email', '2004-04-01', 1500, 800.00, 'Active', 'Web/Mobile', 'Email service', 'https://mail.google.com'),
('YouTube', 'Video Sharing', '2005-02-14', 2500, 1500.00, 'Active', 'Web/Mobile', 'Video sharing platform', 'https://www.youtube.com'),
('Google Maps', 'Mapping', '2005-02-08', 1200, 500.00, 'Active', 'Web/Mobile', 'Mapping and navigation', 'https://maps.google.com'),
('Google Drive', 'Cloud Storage', '2012-04-24', 800, 400.00, 'Active', 'Web/Mobile', 'Cloud storage service', 'https://drive.google.com'),
('Google Photos', 'Photo Storage', '2015-05-28', 900, 300.00, 'Active', 'Web/Mobile', 'Photo storage and sharing', 'https://photos.google.com'),
('Google Docs', 'Office Suite', '2006-10-11', 700, 200.00, 'Active', 'Web/Mobile', 'Online document editing', 'https://docs.google.com'),
('Google Calendar', 'Productivity', '2006-04-13', 600, 150.00, 'Active', 'Web/Mobile', 'Calendar and scheduling', 'https://calendar.google.com'),
('Google Translate', 'Translation', '2006-04-28', 500, 100.00, 'Active', 'Web/Mobile', 'Language translation service', 'https://translate.google.com'),
('Google Assistant', 'AI', '2016-05-18', 400, 250.00, 'Active', 'Mobile/Smart Devices', 'Virtual assistant', 'https://assistant.google.com');

select * from Google_Products;
truncate table Google_Products;
drop table Google_Products;

CREATE TABLE User_Activities (
    Activity_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Activity_Type VARCHAR(50),
    Product_ID INT,
    Activity_Timestamp DATETIME,
    Device_Type VARCHAR(50),
    Location VARCHAR(100),
    IP_Address VARCHAR(45),
    Browser VARCHAR(50),
    Duration_Seconds INT
);

INSERT INTO User_Activities (User_ID, Activity_Type, Product_ID, Activity_Timestamp, Device_Type, Location, IP_Address, Browser, Duration_Seconds) VALUES
(1, 'Search', 1, '2024-04-01 08:30:00', 'Desktop', 'New York, USA', '192.168.1.1', 'Chrome', 120),
(2, 'Email Sent', 2, '2024-04-01 09:15:00', 'Mobile', 'London, UK', '192.168.1.2', 'Firefox', 300),
(3, 'Video Watch', 3, '2024-04-02 10:00:00', 'Tablet', 'Toronto, Canada', '192.168.1.3', 'Safari', 1800),
(4, 'Map Search', 4, '2024-04-02 11:45:00', 'Desktop', 'Sydney, Australia', '192.168.1.4', 'Edge', 600),
(5, 'File Upload', 5, '2024-04-03 13:30:00', 'Mobile', 'Mumbai, India', '192.168.1.5', 'Chrome', 900),
(6, 'Photo Upload', 6, '2024-04-03 14:10:00', 'Mobile', 'Berlin, Germany', '192.168.1.6', 'Chrome', 600),
(7, 'Document Edit', 7, '2024-04-04 15:20:00', 'Desktop', 'Paris, France', '192.168.1.7', 'Firefox', 1200),
(8, 'Event Create', 8, '2024-04-04 16:05:00', 'Mobile', 'Rio de Janeiro, Brazil', '192.168.1.8', 'Chrome', 300),
(9, 'Translate Text', 9, '2024-04-05 17:30:00', 'Desktop', 'Moscow, Russia', '192.168.1.9', 'Edge', 450),
(10, 'Voice Command', 10, '2024-04-05 18:45:00', 'Smart Speaker', 'Tokyo, Japan', '192.168.1.10', 'NA', 60);

select * from User_Activities;
truncate tableUser_Activities;
drop table User_Activities;

CREATE TABLE Advertisements (
    Ad_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT,
    Ad_Title VARCHAR(100),
    Ad_Description TEXT,
    Start_Date DATE,
    End_Date DATE,
    Budget DECIMAL(12,2),
    Clicks INT,
    Impressions INT,
    Status VARCHAR(50)
);

INSERT INTO Advertisements (Product_ID, Ad_Title, Ad_Description, Start_Date, End_Date, Budget, Clicks, Impressions, Status) VALUES
(1, 'Boost Your Search', 'Get the best search experience.', '2024-01-01', '2024-06-30', 50000, 15000, 1000000, 'Active'),
(2, 'Secure Your Email', 'Try Gmail for free.', '2024-02-01', '2024-05-31', 30000, 10000, 700000, 'Active'),
(3, 'Watch Videos Anytime', 'YouTube on all devices.', '2024-01-15', '2024-07-15', 40000, 20000, 1200000, 'Active'),
(4, 'Navigate Easily', 'Google Maps is here to help.', '2024-03-01', '2024-08-31', 25000, 8000, 600000, 'Active'),
(5, 'Store Your Files', 'Use Google Drive today.', '2024-02-15', '2024-07-15', 20000, 5000, 300000, 'Active'),
(6, 'Save Your Memories', 'Google Photos is simple and free.', '2024-01-20', '2024-06-20', 15000, 4000, 250000, 'Active'),
(7, 'Collaborate Easily', 'Google Docs for teams.', '2024-03-10', '2024-09-10', 10000, 3500, 200000, 'Active'),
(8, 'Organize Your Life', 'Google Calendar helps you stay on track.', '2024-04-01', '2024-10-01', 8000, 3000, 150000, 'Active'),
(9, 'Translate with Ease', 'Google Translate for every language.', '2024-02-25', '2024-08-25', 7000, 2500, 100000, 'Active'),
(10, 'Ask Google Assistant', 'Your personal AI helper.', '2024-03-15', '2024-09-15', 12000, 6000, 350000, 'Active');

select * from Advertisements;
truncate table Advertisements;
drop table Advertisements;

CREATE TABLE Subscriptions (
    Subscription_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Product_ID INT,
    Subscription_Type VARCHAR(50),
    Start_Date DATE,
    End_Date DATE,
    Status VARCHAR(20),
    Payment_Method VARCHAR(50),
    Auto_Renew BOOLEAN,
    Price DECIMAL(8,2)
);

INSERT INTO Subscriptions (User_ID, Product_ID, Subscription_Type, Start_Date, End_Date, Status, Payment_Method, Auto_Renew, Price) VALUES
(1, 5, 'Premium', '2024-01-01', '2025-01-01', 'Active', 'Credit Card', TRUE, 99.99),
(2, 6, 'Basic', '2024-02-15', '2025-02-15', 'Active', 'Paypal', TRUE, 49.99),
(3, 7, 'Basic', '2024-03-01', '2025-03-01', 'Active', 'Credit Card', FALSE, 0.00),
(4, 8, 'Premium', '2024-04-10', '2025-04-10', 'Inactive', 'Credit Card', FALSE, 79.99),
(5, 9, 'Basic', '2024-01-20', '2025-01-20', 'Active', 'Paypal', TRUE, 29.99),
(6, 10, 'Premium', '2024-02-25', '2025-02-25', 'Active', 'Credit Card', TRUE, 59.99),
(7, 3, 'Basic', '2024-03-15', '2025-03-15', 'Active', 'Credit Card', TRUE, 0.00),
(8, 2, 'Basic', '2024-01-05', '2025-01-05', 'Active', 'Paypal', TRUE, 0.00),
(9, 1, 'Premium', '2024-02-10', '2025-02-10', 'Active', 'Credit Card', TRUE, 199.99),
(10, 4, 'Basic', '2024-04-01', '2025-04-01', 'Active', 'Paypal', TRUE, 0.00);

select * from Subscriptions;
truncate table Subscriptions;
drop table Subscriptions;

CREATE TABLE Search_Queries (
    Query_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Query_Text VARCHAR(255),
    Query_Date DATETIME,
    Device_Type VARCHAR(50),
    Location VARCHAR(100),
    Result_Count INT,
    Clicked_Result_URL VARCHAR(255),
    Duration_Seconds INT,
    Language VARCHAR(20)
);

INSERT INTO Search_Queries (User_ID, Query_Text, Query_Date, Device_Type, Location, Result_Count, Clicked_Result_URL, Duration_Seconds, Language) VALUES
(1, 'Best pizza near me', '2024-04-01 08:45:00', 'Mobile', 'New York, USA', 100000, 'https://pizzaplace.com', 30, 'en'),
(2, 'Weather tomorrow London', '2024-04-01 09:20:00', 'Desktop', 'London, UK', 50000, 'https://weather.com', 20, 'en'),
(3, 'How to learn French', '2024-04-02 10:15:00', 'Tablet', 'Toronto, Canada', 75000, 'https://frenchcourse.com', 45, 'fr'),
(4, 'Sydney tourist spots', '2024-04-02 12:00:00', 'Desktop', 'Sydney, Australia', 60000, 'https://tourism.sydney.com', 50, 'en'),
(5, 'Gmail login issues', '2024-04-03 13:45:00', 'Mobile', 'Mumbai, India', 30000, 'https://support.google.com', 15, 'hi'),
(6, 'How to reset password', '2024-04-03 14:25:00', 'Mobile', 'Berlin, Germany', 40000, 'https://support.google.com', 25, 'de'),
(7, 'Paris weather next week', '2024-04-04 15:45:00', 'Desktop', 'Paris, France', 55000, 'https://weather.com', 35, 'fr'),
(8, 'Brazil football scores', '2024-04-04 16:30:00', 'Mobile', 'Rio de Janeiro, Brazil', 70000, 'https://sportsnews.com', 40, 'pt'),
(9, 'Russian news headlines', '2024-04-05 17:45:00', 'Desktop', 'Moscow, Russia', 45000, 'https://news.com', 20, 'ru'),
(10, 'Best sushi in Tokyo', '2024-04-05 18:55:00', 'Mobile', 'Tokyo, Japan', 80000, 'https://foodreviews.com', 30, 'jp');

select * from Search_Queries;
truncate table Search_Queries;
drop table Search_Queries;

CREATE TABLE App_Reviews (
    Review_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Product_ID INT,
    Rating INT,
    Review_Text TEXT,
    Review_Date DATE,
    Verified_Purchase BOOLEAN,
    Helpful_Count INT,
    Response TEXT,
    Status VARCHAR(20)
);

INSERT INTO App_Reviews (User_ID, Product_ID, Rating, Review_Text, Review_Date, Verified_Purchase, Helpful_Count, Response, Status) VALUES
(1, 3, 5, 'Love the app! Very useful.', '2024-04-01', TRUE, 10, 'Thank you!', 'Published'),
(2, 5, 4, 'Good storage capacity.', '2024-04-02', TRUE, 5, 'We appreciate your feedback.', 'Published'),
(3, 7, 3, 'Needs more features.', '2024-04-03', TRUE, 2, 'Working on it.', 'Published'),
(4, 2, 5, 'Easy to use email.', '2024-04-04', TRUE, 8, 'Thanks for your review!', 'Published'),
(5, 4, 4, 'Maps are accurate.', '2024-04-05', TRUE, 4, '', 'Published'),
(6, 6, 5, 'Great photo backup.', '2024-04-06', TRUE, 6, 'Glad you like it!', 'Published'),
(7, 8, 4, 'Helps me stay organized.', '2024-04-07', TRUE, 3, '', 'Published'),
(8, 9, 5, 'Fast and accurate translation.', '2024-04-08', TRUE, 7, 'Thank you!', 'Published'),
(9, 10, 4, 'Assistant is handy.', '2024-04-09', TRUE, 5, '', 'Published'),
(10, 1, 5, 'Best search engine ever.', '2024-04-10', TRUE, 9, 'Thanks for your support!', 'Published');

select * from App_Reviews ;
truncate table App_Reviews;
drop table App_Reviews;

CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50),
    Job_Title VARCHAR(50),
    Hire_Date DATE,
    Salary DECIMAL(10,2),
    Manager_ID INT,
    Location VARCHAR(100)
);

INSERT INTO Employee (First_Name, Last_Name, Email, Department, Job_Title, Hire_Date, Salary, Manager_ID, Location) VALUES
('John', 'Doe', 'john.doe@google.com', 'Engineering', 'Software Engineer', '2015-06-01', 120000.00, 101, 'Mountain View'),
('Jane', 'Smith', 'jane.smith@google.com', 'Product', 'Product Manager', '2016-08-15', 130000.00, 102, 'New York'),
('Michael', 'Brown', 'michael.brown@google.com', 'Engineering', 'DevOps Engineer', '2017-01-20', 115000.00, 101, 'Mountain View'),
('Emily', 'Davis', 'emily.davis@google.com', 'HR', 'HR Manager', '2014-04-10', 90000.00, NULL, 'Chicago'),
('Chris', 'Wilson', 'chris.wilson@google.com', 'Marketing', 'Marketing Specialist', '2018-03-25', 85000.00, 103, 'Seattle'),
('Anna', 'Taylor', 'anna.taylor@google.com', 'Engineering', 'QA Engineer', '2019-09-12', 95000.00, 101, 'Mountain View'),
('David', 'Lee', 'david.lee@google.com', 'Sales', 'Sales Manager', '2015-11-05', 110000.00, 104, 'Boston'),
('Laura', 'White', 'laura.white@google.com', 'Product', 'UX Designer', '2017-07-18', 105000.00, 102, 'New York'),
('Robert', 'Martinez', 'robert.martinez@google.com', 'Engineering', 'Software Engineer', '2020-02-02', 115000.00, 101, 'Mountain View'),
('Sophia', 'Clark', 'sophia.clark@google.com', 'Legal', 'Legal Counsel', '2016-12-11', 125000.00, NULL, 'Washington DC');

select * from Employee ;
truncate table Employee;
drop table Employee;

CREATE TABLE Bug_Reports (
    Bug_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT,
    Reported_By INT,
    Title VARCHAR(150),
    Description TEXT,
    Report_Date DATE,
    Status VARCHAR(50),
    Severity VARCHAR(20),
    Assigned_To INT,
    Resolution_Date DATE
);

INSERT INTO Bug_Reports (Product_ID, Reported_By, Title, Description, Report_Date, Status, Severity, Assigned_To, Resolution_Date) VALUES
(3, 1, 'Video buffering issue', 'Videos buffer frequently on slow networks.', '2024-04-01', 'Open', 'Medium', 201, NULL),
(5, 2, 'Sync problem', 'Files do not sync properly.', '2024-04-02', 'In Progress', 'High', 202, NULL),
(2, 3, 'Login failure', 'Cannot login with correct credentials.', '2024-04-03', 'Resolved', 'Critical', 203, '2024-04-05'),
(4, 4, 'Map zoom malfunction', 'Zoom resets unexpectedly.', '2024-04-04', 'Open', 'Low', 204, NULL),
(6, 5, 'Photo upload error', 'Photos fail to upload intermittently.', '2024-04-05', 'In Progress', 'Medium', 205, NULL),
(7, 6, 'Document save error', 'Documents fail to save.', '2024-04-06', 'Resolved', 'High', 206, '2024-04-10'),
(1, 7, 'Search lag', 'Search results take too long.', '2024-04-07', 'Open', 'Medium', 207, NULL),
(8, 8, 'Calendar sync delay', 'Events not syncing promptly.', '2024-04-08', 'In Progress', 'Low', 208, NULL),
(9, 9, 'Translation inaccuracies', 'Wrong translations for idioms.', '2024-04-09', 'Open', 'Medium', 209, NULL),
(10, 10, 'Assistant misunderstanding', 'Assistant often misunderstands commands.', '2024-04-10', 'Open', 'High', 210, NULL);

select * from  Bug_Reports;
truncate table Bug_Reports;
drop table Bug_Reports;

CREATE TABLE Data_Centers (
    DataCenter_ID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR(100),
    Capacity_Power_MW DECIMAL(6,2),
    Servers_Count INT,
    Start_Operation_Date DATE,
    Manager_Name VARCHAR(100),
    Status VARCHAR(50),
    Security_Level VARCHAR(50),
    Cooling_Type VARCHAR(50),
    Network_Bandwidth_Gbps DECIMAL(8,2)
);

INSERT INTO Data_Centers (Location, Capacity_Power_MW, Servers_Count, Start_Operation_Date, Manager_Name, Status, Security_Level, Cooling_Type, Network_Bandwidth_Gbps) VALUES
('Oregon, USA', 100.00, 50000, '2010-05-20', 'Alice Johnson', 'Operational', 'High', 'Liquid Cooling', 4000.00),
('Iowa, USA', 150.00, 60000, '2012-08-15', 'Bob Smith', 'Operational', 'High', 'Air Cooling', 5000.00),
('Belgium, Europe', 120.00, 45000, '2013-10-01', 'Carla Garcia', 'Operational', 'High', 'Liquid Cooling', 3500.00),
('Singapore, Asia', 80.00, 30000, '2014-04-12', 'David Lee', 'Operational', 'Medium', 'Air Cooling', 3000.00),
('Taiwan, Asia', 90.00, 32000, '2015-09-22', 'Eva Wong', 'Operational', 'Medium', 'Liquid Cooling', 3200.00),
('Finland, Europe', 110.00, 47000, '2016-06-30', 'Frank Müller', 'Operational', 'High', 'Air Cooling', 4000.00),
('South Carolina, USA', 130.00, 52000, '2017-03-25', 'Grace Kim', 'Operational', 'High', 'Liquid Cooling', 4500.00),
('Chile, South America', 70.00, 28000, '2018-11-05', 'Hector Ramirez', 'Operational', 'Medium', 'Air Cooling', 2500.00),
('Tokyo, Japan', 85.00, 31000, '2019-01-18', 'Ivy Tanaka', 'Operational', 'Medium', 'Liquid Cooling', 3000.00),
('Sydney, Australia', 75.00, 29000, '2020-07-10', 'Jack Wilson', 'Operational', 'Medium', 'Air Cooling', 2800.00);

select * from Data_Centers ;
truncate table Data_Centers;
drop table Data_Centers;