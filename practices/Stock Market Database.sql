create database stock_market;
use stock_market;

CREATE TABLE Companies (
    Company_ID INT PRIMARY KEY AUTO_INCREMENT,
    Ticker VARCHAR(10),
    Name VARCHAR(100),
    Sector VARCHAR(50),
    Industry VARCHAR(50),
    Founded_Year INT,
    Headquarters VARCHAR(100),
    Market_Cap DECIMAL(20,2),
    Website VARCHAR(255),
    Status VARCHAR(20)
);

INSERT INTO Companies (Ticker, Name, Sector, Industry, Founded_Year, Headquarters, Market_Cap, Website, Status) VALUES
('AAPL', 'Apple Inc.', 'Technology', 'Consumer Electronics', 1976, 'Cupertino, CA', 2500000000000.00, 'https://www.apple.com', 'Active'),
('MSFT', 'Microsoft Corporation', 'Technology', 'Software’, 1975, 'Redmond, WA', 2200000000000.00, 'https://www.microsoft.com', 'Active'),
('GOOGL', 'Alphabet Inc.', 'Communication', 'Internet Services', 1998, 'Mountain View, CA', 1500000000000.00, 'https://abc.xyz', 'Active'),
('AMZN', 'Amazon.com, Inc.', 'Consumer Cyclical', 'E‑commerce', 1994, 'Seattle, WA', 1700000000000.00, 'https://www.amazon.com', 'Active'),
('TSLA', 'Tesla, Inc.', 'Consumer Cyclical', 'Auto & EV', 2003, 'Palo Alto, CA', 900000000000.00, 'https://www.tesla.com', 'Active'),
('JPM', 'JPMorgan Chase & Co.', 'Financial', 'Banks', 1799, 'New York, NY', 500000000000.00, 'https://www.jpmorganchase.com', 'Active'),
('V', 'Visa Inc.', 'Financial', 'Credit Services', 1958, 'San Francisco, CA', 400000000000.00, 'https://www.visa.com', 'Active'),
('WMT', 'Walmart Inc.', 'Consumer Defensive', 'Retail', 1962, 'Bentonville, AR', 350000000000.00, 'https://www.walmart.com', 'Active'),
('DIS', 'The Walt Disney Company', 'Communication', 'Entertainment', 1923, 'Burbank, CA', 300000000000.00, 'https://www.disney.com', 'Active'),
('NFLX', 'Netflix, Inc.', 'Communication', 'Entertainment', 1997, 'Los Gatos, CA', 200000000000.00, 'https://www.netflix.com', 'Active');

select * from  Companies;
truncate table Companies;
drop taBLE Companies;

CREATE TABLE Exchanges (
    Exchange_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Country VARCHAR(50),
    City VARCHAR(50),
    Founded_Year INT,
    Timezone VARCHAR(50),
    Website VARCHAR(255),
    Status VARCHAR(20),
    Trading_Hours VARCHAR(50),
    Currency VARCHAR(10)
);

INSERT INTO Exchanges (Name, Country, City, Founded_Year, Timezone, Website, Status, Trading_Hours, Currency) VALUES
('NYSE', 'USA', 'New York', 1792, 'EST', 'https://www.nyse.com', 'Active', '09:30–16:00', 'USD'),
('NASDAQ', 'USA', 'New York', 1971, 'EST', 'https://www.nasdaq.com', 'Active', '09:30–16:00', 'USD'),
('LSE', 'UK', 'London', 1801, 'GMT', 'https://www.londonstockexchange.com', 'Active', '08:00–16:30', 'GBP'),
('JPX', 'Japan', 'Tokyo', 2013, 'JST', 'https://www.jpx.co.jp', 'Active', '09:00–15:00', 'JPY'),
('SSE', 'China', 'Shanghai', 1990, 'CST', 'https://www.sse.com.cn', 'Active', '09:30–15:00', 'CNY'),
('HKEX', 'Hong Kong', 'Hong Kong', 1891, 'HKT', 'https://www.hkex.com.hk', 'Active', '09:30–16:00', 'HKD'),
('Euronext', 'EU', 'Amsterdam', 2000, 'CET', 'https://www.euronext.com', 'Active', '09:00–17:30', 'EUR'),
('TSX', 'Canada', 'Toronto', 1861, 'EST', 'https://www.tsx.com', 'Active', '09:30–16:00', 'CAD'),
('BSE', 'India', 'Mumbai', 1875, 'IST', 'https://www.bseindia.com', 'Active', '09:15–15:30', 'INR'),
('NSE', 'India', 'Mumbai', 1992, 'IST', 'https://www.nseindia.com', 'Active', '09:15–15:30', 'INR');

select * from  Exchanges;
truncate table Exchanges;
drop taBLE Exchanges;

CREATE TABLE Listings (
    Listing_ID INT PRIMARY KEY AUTO_INCREMENT,
    Company_ID INT,
    Exchange_ID INT,
    Ticker VARCHAR(10),
    Listing_Date DATE,
    Status VARCHAR(20),
    Shares_Outstanding DECIMAL(20,2),
    Market_Cap DECIMAL(20,2),
    Sector VARCHAR(50),
    Notes TEXT
);

INSERT INTO Listings (Company_ID, Exchange_ID, Ticker, Listing_Date, Status, Shares_Outstanding, Market_Cap, Sector, Notes) VALUES
(1, 2, 'AAPL', '1980-12-12', 'Active', 16000000000.00, 2500000000000.00, 'Technology', ''),
(2, 2, 'MSFT', '1986-03-13', 'Active', 7500000000.00, 2200000000000.00, 'Technology', ''),
(3, 2, 'GOOGL', '2004-08-19', 'Active', 660000000.00, 1500000000000.00, 'Internet', ''),
(4, 2, 'AMZN', '1997-05-15', 'Active', 500000000.00, 1700000000000.00, 'E‑commerce', ''),
(5, 2, 'TSLA', '2010-06-29', 'Active', 1000000000.00, 900000000000.00, 'Automotive', ''),
(6, 1, 'JPM', '1969-05-01', 'Active', 3000000000.00, 500000000000.00, 'Banking', ''),
(7, 2, 'V', '2008-03-19', 'Active', 2100000000.00, 400000000000.00, 'Finance', ''),
(8, 9, 'WMT', '1970-10-01', 'Active', 2300000000.00, 350000000000.00, 'Retail', ''),
(9, 1, 'DIS', '1957-11-12', 'Active', 1600000000.00, 300000000000.00, 'Entertainment', ''),
(10, 2, 'NFLX', '2002-05-23', 'Active', 450000000.00, 200000000000.00, 'Entertainment', '');

select * from  Listings;
truncate table Listings;
drop taBLE Listings;

CREATE TABLE Price_History (
    Price_ID INT PRIMARY KEY AUTO_INCREMENT,
    Listing_ID INT,
    Date DATE,
    Open_Price DECIMAL(20,4),
    High_Price DECIMAL(20,4),
    Low_Price DECIMAL(20,4),
    Close_Price DECIMAL(20,4),
    Volume BIGINT,
    Adjusted_Close DECIMAL(20,4),
    Notes TEXT
);

INSERT INTO Price_History (Listing_ID, Date, Open_Price, High_Price, Low_Price, Close_Price, Volume, Adjusted_Close, Notes) VALUES
(1, '2024-10-01', 145.00, 150.00, 144.00, 148.50, 100000000, 148.50, ''),
(1, '2024-10-02', 148.50, 151.00, 147.50, 150.00, 90000000, 150.00, ''),
(2, '2024-10-01', 300.00, 305.00, 299.00, 304.20, 80000000, 304.20, ''),
(3, '2024-10-01', 2750.00, 2800.00, 2740.00, 2790.00, 5000000, 2790.00, ''),
(4, '2024-10-01', 3300.00, 3350.00, 3290.00, 3340.00, 3000000, 3340.00, ''),
(5, '2024-10-01', 900.00, 930.00, 890.00, 920.00, 7000000, 920.00, ''),
(6, '2024-10-01', 160.00, 165.00, 158.00, 162.50, 12000000, 162.50, ''),
(7, '2024-10-01', 220.00, 225.00, 218.00, 224.00, 5000000, 224.00, ''),
(8, '2024-10-01', 140.00, 142.00, 138.00, 141.00, 15000000, 141.00, ''),
(9, '2024-10-01', 100.00, 105.00, 99.00, 104.00, 6000000, 104.00, ''),
(10, '2024-10-01', 500.00, 520.00, 495.00, 515.00, 2500000, 515.00, '');

select * from  Price_History;
truncate table Price_History;
drop taBLE Price_History;

CREATE TABLE Dividends (
    Dividend_ID INT PRIMARY KEY AUTO_INCREMENT,
    Company_ID INT,
    Ex_Date DATE,
    Record_Date DATE,
    Payment_Date DATE,
    Dividend_Per_Share DECIMAL(20,4),
    Yield DECIMAL(10,4),
    Currency VARCHAR(10),
    Status VARCHAR(20),
    Notes TEXT
);

INSERT INTO Dividends (Company_ID, Ex_Date, Record_Date, Payment_Date, Dividend_Per_Share, Yield, Currency, Status, Notes) VALUES
(1, '2024-08-30', '2024-09-01', '2024-09-15', 0.88, 0.0059, 'USD', 'Paid', ''),
(2, '2024-09-10', '2024-09-12', '2024-09-26', 2.48, 0.0082, 'USD', 'Paid', ''),
(6, '2024-07-15', '2024-07-17', '2024-08-01', 1.00, 0.0062, 'USD', 'Paid', ''),
(7, '2024-08-01', '2024-08-03', '2024-08-15', 0.70, 0.0031, 'USD', 'Paid', ''),
(8, '2024-06-20', '2024-06-22', '2024-07-05', 0.55, 0.0039, 'USD', 'Paid', ''),
(9, '2024-07-01', '2024-07-03', '2024-07-25', 1.25, 0.0125, 'USD', 'Paid', ''),
(10, '2024-09-01', '2024-09-03', '2024-09-20', 0.50, 0.0030, 'USD', 'Paid', ''),
(4, '2024-08-15', '2024-08-17', '2024-09-10', 0.10, 0.0003, 'USD', 'Paid', ''),
(5, '2024-08-10', '2024-08-12', '2024-08-30', 0.00, 0.0000, 'USD', 'NoDividend', ''),
(3, '2024-07-25', '2024-07-27', '2024-08-15', 0.20, 0.0007, 'USD', 'Paid', '');

select * from  Dividends;
truncate table Dividends;
drop taBLE Dividends;

CREATE TABLE Corporate_Actions (
    Action_ID INT PRIMARY KEY AUTO_INCREMENT,
    Company_ID INT,
    Action_Type VARCHAR(50),
    Announcement_Date DATE,
    Effective_Date DATE,
    Details TEXT,
    Status VARCHAR(20),
    Ratio VARCHAR(20),
    Notes TEXT,
    Created_At DATETIME
);

INSERT INTO Corporate_Actions (Company_ID, Action_Type, Announcement_Date, Effective_Date, Details, Status, Ratio, Notes, Created_At) VALUES
(1, 'Stock Split', '2024-08-01', '2024-09-01', '2-for-1 stock split', 'Executed', '2:1', '', '2024-08-01 09:00:00'),
(2, 'Dividend Increase', '2024-07-15', '2024-08-01', '10% raise in dividend', 'Executed', 'N/A', '', '2024-07-15 10:00:00'),
(4, 'Spin-off', '2024-06-30', '2024-08-30', 'Spin-off of subsidiary', 'Planned', 'N/A', '', '2024-06-30 11:00:00'),
(5, 'Merger', '2024-05-20', '2024-11-01', 'Merger with Company X', 'Pending', '1:1', '', '2024-05-20 12:00:00'),
(6, 'Dividend Cut', '2024-07-01', '2024-09-01', 'Dividend reduced by 20%', 'Executed', 'N/A', '', '2024-07-01 13:00:00'),
(7, 'Name Change', '2024-08-10', '2024-10-01', 'Change name to Visa Global', 'Planned', 'N/A', '', '2024-08-10 14:00:00'),
(8, 'Share Buyback', '2024-09-01', '2024-10-15', 'Buyback worth $5B', 'Planned', 'N/A', '', '2024-09-01 15:00:00'),
(9, 'Dividend Special', '2024-09-05', '2024-10-10', 'One-time special dividend', 'Planned', 'N/A', '', '2024-09-05 16:00:00'),
(10, 'Split Reverse', '2024-07-20', '2024-09-20', '1-for-5 reverse split', 'Executed', '1:5', '', '2024-07-20 17:00:00'),
(3, 'Acquisition', '2024-06-01', '2024-08-01', 'Acquire Company Y', 'Planned', 'N/A', '', '2024-06-01 18:00:00');

select * from  Corporate_Actions;
truncate table Corporate_Actions;
drop taBLE Corporate_Actions;

CREATE TABLE Users_Holdings (
    Holding_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Listing_ID INT,
    Shares_Held DECIMAL(20,4),
    Average_Cost DECIMAL(20,4),
    Market_Value DECIMAL(20,4),
    Currency VARCHAR(10),
    Last_Updated DATETIME,
    Status VARCHAR(20),
    Notes TEXT
);

INSERT INTO Users_Holdings (User_ID, Listing_ID, Shares_Held, Average_Cost, Market_Value, Currency, Last_Updated, Status, Notes) VALUES
(1, 1, 10.0, 140.00, 1485.00, 'USD', '2024-10-01 10:00:00', 'Active', ''),
(1, 2, 5.0, 290.00, 1521.00, 'USD', '2024-10-01 10:05:00', 'Active', ''),
(2, 3, 2.0, 2700.00, 5580.00, 'USD', '2024-10-01 10:10:00', 'Active', ''),
(2, 4, 1.0, 3300.00, 3340.00, 'USD', '2024-10-01 10:15:00', 'Active', ''),
(3, 5, 20.0, 900.00, 18400.00, 'USD', '2024-10-01 10:20:00', 'Active', ''),
(3, 6, 50.0, 160.00, 8125.00, 'USD', '2024-10-01 10:25:00', 'Active', ''),
(4, 7, 15.0, 220.00, 3360.00, 'USD', '2024-10-01 10:30:00', 'Active', ''),
(4, 8, 100.0, 140.00, 14100.00, 'USD', '2024-10-01 10:35:00', 'Active', ''),
(5, 9, 500.0, 100.00, 52000.00, 'USD', '2024-10-01 10:40:00', 'Active', ''),
(5, 10, 30.0, 500.00, 15450.00, 'USD', '2024-10-01 10:45:00', 'Active', '');

select * from Users_Holdings ;
truncate table Users_Holdings;
drop taBLE Users_Holdings;

CREATE TABLE Alerts (
    Alert_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Listing_ID INT,
    Alert_Type VARCHAR(50),
    Threshold DECIMAL(20,4),
    Direction VARCHAR(10),
    Created_At DATETIME,
    Status VARCHAR(20),
    Last_Triggered DATETIME,
    Notes TEXT
);

INSERT INTO Alerts (User_ID, Listing_ID, Alert_Type, Threshold, Direction, Created_At, Status, Last_Triggered, Notes) VALUES
(1, 1, 'Price Drop', 140.00, 'Below', '2024-09-01 09:00:00', 'Active', NULL, ''),
(1, 1, 'Price Rise', 155.00, 'Above', '2024-09-01 09:05:00', 'Active', NULL, ''),
(2, 2, 'Price Drop', 295.00, 'Below', '2024-09-02 10:00:00', 'Active', NULL, ''),
(2, 2, 'Price Rise', 310.00, 'Above', '2024-09-02 10:10:00', 'Active', NULL, ''),
(3, 3, 'Price Drop', 2700.00, 'Below', '2024-09-03 11:00:00', 'Active', NULL, ''),
(3, 4, 'Price Rise', 3350.00, 'Above', '2024-09-03 11:15:00', 'Active', NULL, ''),
(4, 5, 'Price Drop', 880.00, 'Below', '2024-09-04 12:00:00', 'Active', NULL, ''),
(4, 5, 'Price Rise', 950.00, 'Above', '2024-09-04 12:20:00', 'Active', NULL, ''),
(5, 6, 'Price Drop', 150.00, 'Below', '2024-09-05 13:00:00', 'Active', NULL, ''),
(5, 10, 'Price Rise', 550.00, 'Above', '2024-09-05 13:10:00', 'Active', NULL, '');

select * from Alerts;
truncate table Alerts;
drop taBLE Alerts;

CREATE TABLE Order_Book (
    OrderBook_ID INT PRIMARY KEY AUTO_INCREMENT,
    Listing_ID INT,
    Side VARCHAR(10),  
    Price DECIMAL(20,8),
    Quantity DECIMAL(20,8),
    Timestamp DATETIME,
    Status VARCHAR(20),
    User_ID INT,
    Fee DECIMAL(20,8),
    Notes TEXT
);

INSERT INTO Order_Book (Listing_ID, Side, Price, Quantity, Timestamp, Status, User_ID, Fee, Notes) VALUES
(1, 'Buy', 148.00, 100.0, '2024-10-01 09:30:00', 'Open', 1, 0.02, ''),
(1, 'Sell', 149.50, 50.0, '2024-10-01 09:35:00', 'Open', 2, 0.015, ''),
(2, 'Buy', 304.00, 200.0, '2024-10-01 09:40:00', 'Open', 3, 0.03, ''),
(3, 'Sell', 2795.00, 10.0, '2024-10-01 09:45:00', 'Open', 4, 0.05, ''),
(4, 'Buy', 3335.00, 5.0, '2024-10-01 09:50:00', 'Open', 5, 0.04, ''),
(5, 'Sell', 915.00, 20.0, '2024-10-01 09:55:00', 'Open', 6, 0.025, ''),
(6, 'Buy', 162.00, 100.0, '2024-10-01 10:00:00', 'Open', 7, 0.02, ''),
(7, 'Sell', 225.00, 50.0, '2024-10-01 10:05:00', 'Open', 8, 0.03, ''),
(8, 'Buy', 140.50, 300.0, '2024-10-01 10:10:00', 'Open', 9, 0.02, ''),
(9, 'Sell', 104.00, 150.0, '2024-10-01 10:15:00', 'Open', 10, 0.015, '');

select * from Order_Book;
truncate table Order_Book;
drop taBLE Order_Book;

CREATE TABLE Market_Indexes (
    Index_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Symbol VARCHAR(10),
    Country VARCHAR(50),
    Base_Value DECIMAL(20,4),
    Current_Value DECIMAL(20,4),
    Change_Percent DECIMAL(10,4),
    Last_Updated DATETIME,
    Constituents_Count INT,
    Notes TEXT
);

INSERT INTO Market_Indexes (Name, Symbol, Country, Base_Value, Current_Value, Change_Percent, Last_Updated, Constituents_Count, Notes) VALUES
('S&P 500', 'SPX', 'USA', 1000.0000, 4500.5000, 0.85, '2024-10-01 16:00:00', 500, ''),
('Dow Jones', 'DJIA', 'USA', 1000.0000, 35000.2000, 1.15, '2024-10-01 16:00:00', 30, ''),
('Nasdaq Composite', 'IXIC', 'USA', 1000.0000, 15000.3000, 1.25, '2024-10-01 16:00:00', 3000, ''),
('FTSE 100', 'FTSE', 'UK', 1000.0000, 7500.4000, 0.45, '2024-10-01 16:30:00', 100, ''),
('Nikkei 225', 'N225', 'Japan', 1000.0000, 28000.1000, 0.55, '2024-10-01 15:00:00', 225, ''),
('Shanghai Composite', 'SSEC', 'China', 1000.0000, 3000.5000, 0.35, '2024-10-01 15:00:00', 1500, ''),
('Hang Seng', 'HSI', 'Hong Kong', 1000.0000, 22000.6000, 0.65, '2024-10-01 16:00:00', 50, ''),
('Sensex', 'SENSEX', 'India', 1000.0000, 65000.7000, 0.75, '2024-10-01 15:30:00', 30, ''),
('Nifty 50', 'NIFTY', 'India', 1000.0000, 19500.8000, 0.85, '2024-10-01 15:30:00', 50, ''),
('DAX', 'GDAXI', 'Germany', 1000.0000, 16000.9000, 0.95, '2024-10-01 17:30:00', 30, '');

select * from Market_Indexes;
truncate table Market_Indexes;
drop taBLE Market_Indexes;
