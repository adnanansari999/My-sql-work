CREATE DATABASE CRYPTO_CURRENCY;
USE CRYPTO_CURRENCY;

CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50),
    Email VARCHAR(100),
    Password_Hash VARCHAR(255),
    Created_At DATETIME,
    Last_Login DATETIME,
    Status VARCHAR(20),
    Country VARCHAR(50),
    Phone_Number VARCHAR(20),
    Referral_Code VARCHAR(50)
);

INSERT INTO Users (Username, Email, Password_Hash, Created_At, Last_Login, Status, Country, Phone_Number, Referral_Code) VALUES
('cryptoKing', 'king@example.com', 'hash1', '2023-01-10 12:00:00', '2024-10-01 10:00:00', 'Active', 'USA', '+1234567890', 'REF123'),
('blockMaster', 'block@example.com', 'hash2', '2023-02-15 15:20:00', '2024-09-29 09:45:00', 'Active', 'UK', '+447987654321', 'REF124'),
('coinWizard', 'wizard@example.com', 'hash3', '2023-03-01 08:30:00', '2024-10-05 14:30:00', 'Active', 'Canada', '+14161234567', 'REF125'),
('hodlQueen', 'queen@example.com', 'hash4', '2023-04-20 18:00:00', '2024-10-06 12:00:00', 'Suspended', 'Australia', '+61298765432', 'REF126'),
('blockBuster', 'buster@example.com', 'hash5', '2023-05-05 09:45:00', '2024-10-03 16:15:00', 'Active', 'India', '+919876543210', 'REF127'),
('chainRunner', 'runner@example.com', 'hash6', '2023-06-10 14:00:00', '2024-10-04 11:00:00', 'Active', 'Germany', '+491234567890', 'REF128'),
('cryptoNinja', 'ninja@example.com', 'hash7', '2023-07-12 20:00:00', '2024-10-02 08:30:00', 'Active', 'Japan', '+819012345678', 'REF129'),
('bitGuru', 'guru@example.com', 'hash8', '2023-08-08 07:15:00', '2024-10-01 17:45:00', 'Active', 'Brazil', '+5511987654321', 'REF130'),
('tokenMaster', 'token@example.com', 'hash9', '2023-09-18 13:00:00', '2024-10-05 19:00:00', 'Active', 'South Africa', '+27831234567', 'REF131'),
('coinDiva', 'diva@example.com', 'hash10', '2023-10-01 11:45:00', '2024-10-06 14:30:00', 'Active', 'France', '+33123456789', 'REF132');

SELECT * FROM Users;
truncate TABLE Users;
DROP TABLE Users;

CREATE TABLE Cryptocurrencies (
    Crypto_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Symbol VARCHAR(10),
    Launch_Date DATE,
    Market_Cap DECIMAL(20,2),
    Circulating_Supply DECIMAL(20,2),
    Max_Supply DECIMAL(20,2),
    Consensus_Algorithm VARCHAR(50),
    Website VARCHAR(100),
    Description TEXT
);

INSERT INTO Cryptocurrencies (Name, Symbol, Launch_Date, Market_Cap, Circulating_Supply, Max_Supply, Consensus_Algorithm, Website, Description) VALUES
('Bitcoin', 'BTC', '2009-01-03', 900000000000.00, 19000000.00, 21000000.00, 'Proof of Work', 'https://bitcoin.org', 'The first decentralized cryptocurrency'),
('Ethereum', 'ETH', '2015-07-30', 400000000000.00, 120000000.00, NULL, 'Proof of Stake', 'https://ethereum.org', 'Blockchain platform for smart contracts'),
('Ripple', 'XRP', '2012-08-01', 50000000000.00, 45000000000.00, 100000000000.00, 'Consensus', 'https://ripple.com', 'Digital payment protocol'),
('Litecoin', 'LTC', '2011-10-13', 10000000000.00, 70000000.00, 84000000.00, 'Proof of Work', 'https://litecoin.org', 'Peer-to-peer cryptocurrency'),
('Cardano', 'ADA', '2017-09-29', 35000000000.00, 32000000000.00, 45000000000.00, 'Proof of Stake', 'https://cardano.org', 'Third generation blockchain platform'),
('Polkadot', 'DOT', '2020-05-26', 20000000000.00, 900000000.00, 1000000000.00, 'Nominated Proof of Stake', 'https://polkadot.network', 'Multi-chain interoperability protocol'),
('Chainlink', 'LINK', '2017-09-20', 12000000000.00, 450000000.00, 1000000000.00, 'Proof of Stake', 'https://chain.link', 'Decentralized oracle network'),
('Stellar', 'XLM', '2014-07-31', 7000000000.00, 22000000000.00, 50000000000.00, 'Consensus', 'https://stellar.org', 'Cross-border payment platform'),
('Dogecoin', 'DOGE', '2013-12-06', 5000000000.00, 130000000000.00, NULL, 'Proof of Work', 'https://dogecoin.com', 'Meme cryptocurrency'),
('Solana', 'SOL', '2020-03-16', 30000000000.00, 270000000.00, 500000000.00, 'Proof of History', 'https://solana.com', 'High-performance blockchain');

SELECT * FROM Cryptocurrencies;
truncate TABLE Cryptocurrencies;
DROP table Cryptocurrencies;

CREATE TABLE Wallets (
    Wallet_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Wallet_Address VARCHAR(100),
    Crypto_ID INT,
    Balance DECIMAL(20,8),
    Created_At DATETIME,
    Last_Updated DATETIME,
    Wallet_Type VARCHAR(50),
    Status VARCHAR(20),
    Notes TEXT
);

INSERT INTO Wallets (User_ID, Wallet_Address, Crypto_ID, Balance, Created_At, Last_Updated, Wallet_Type, Status, Notes) VALUES
(1, '1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa', 1, 1.23456789, '2023-01-15 12:00:00', '2024-10-01 10:00:00', 'Hot Wallet', 'Active', 'Main BTC wallet'),
(2, '0xAbC12345DeF67890GhIjKLMNOpQRstUVWXyz', 2, 5.67890123, '2023-02-20 15:30:00', '2024-09-29 09:45:00', 'Cold Wallet', 'Active', 'Ethereum holdings'),
(3, 'rG1QQv2nh2gr7RCZ1P8YYcBUKCCN633jCn', 3, 1000.0, '2023-03-05 08:45:00', '2024-10-05 14:30:00', 'Hot Wallet', 'Active', 'Ripple Wallet'),
(4, 'LcHKzKQH9XeE1Yq3xFT9gjF6TxX6Yn6VjF', 4, 20.50, '2023-04-18 18:30:00', '2024-10-06 12:00:00', 'Hot Wallet', 'Inactive', 'Litecoin wallet for trading'),
(5, 'DdzFFzCqrhsjN5ZKLdp8NFmq7eVuXQsQJZt', 5, 1500.75, '2023-05-10 10:10:00', '2024-10-03 16:15:00', 'Cold Wallet', 'Active', 'ADA staking wallet'),
(6, '12X5YZq7WJYCLPjB8mC7SDHG', 6, 300.0, '2023-06-22 13:20:00', '2024-10-04 11:00:00', 'Hot Wallet', 'Active', 'DOT wallet for trading'),
(7, '0xF3B8D2E6b7C3e4a9dAAb1234567890DEF', 7, 500.0, '2023-07-15 20:45:00', '2024-10-02 08:30:00', 'Cold Wallet', 'Active', 'Chainlink cold wallet'),
(8, 'GBRPYHIL2CI3JXFGL4P4GH5WV67LYGZME4FOMCNHB3D5E5YB7BHF4NKD', 8, 800.50, '2023-08-08 07:50:00', '2024-10-01 17:45:00', 'Hot Wallet', 'Active', 'Stellar wallet'),
(9, 'D9aYeXPVbVhjZc7vW4dDGXX5YNvQ9SxtRW', 9, 20000.0, '2023-09-22 14:30:00', '2024-10-05 19:00:00', 'Hot Wallet', 'Active', 'Dogecoin hot wallet'),
(10, '4PdZWyS5dL1Yb42bX1V1G7zJnB6V3m6RGA', 10, 120.75, '2023-10-01 11:15:00', '2024-10-06 14:30:00', 'Cold Wallet', 'Active', 'Solana staking wallet');

SELECT * FROM Wallets;
truncate TABLE Wallets;
DROP table Wallets;

CREATE TABLE Transactions (
    Transaction_ID INT PRIMARY KEY AUTO_INCREMENT,
    Wallet_ID INT,
    Tx_Hash VARCHAR(100),
    Tx_Type VARCHAR(20),
    Amount DECIMAL(20,8),
    Fee DECIMAL(20,8),
    From_Address VARCHAR(100),
    To_Address VARCHAR(100),
    Timestamp DATETIME,
    Status VARCHAR(20)
);

INSERT INTO Transactions (Wallet_ID, Tx_Hash, Tx_Type, Amount, Fee, From_Address, To_Address, Timestamp, Status) VALUES
(1, '0xabc123def456', 'Send', 0.5, 0.0001, '1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa', '1BvBMSEYstWetqTFn5Au4m4GFg7xJaNVN2', '2024-09-20 11:00:00', 'Confirmed'),
(2, '0xdef789ghi012', 'Receive', 2.0, 0.0002, '0xAbC12345DeF67890GhIjKLMNOpQRstUVWXyz', '0x123456789abcdef', '2024-09-22 14:30:00', 'Confirmed'),
(3, '0xghi345jkl678', 'Send', 500.0, 0.01, 'rG1QQv2nh2gr7RCZ1P8YYcBUKCCN633jCn', 'rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh', '2024-09-25 10:45:00', 'Pending'),
(4, '0xjkl901mno234', 'Receive', 10.0, 0.001, 'LcHKzKQH9XeE1Yq3xFT9gjF6TxX6Yn6VjF', 'LcHKzKQH9XeE1Yq3xFT9gjF6TxX6Yn6VjF', '2024-09-27 13:00:00', 'Confirmed'),
(5, '0xmno567pqr890', 'Send', 100.0, 0.005, 'DdzFFzCqrhsjN5ZKLdp8NFmq7eVuXQsQJZt', 'DdzFFzCqrhsjN5ZKLdp8NFmq7eVuXQsQJZt', '2024-09-28 16:20:00', 'Confirmed'),
(6, '0xpqr123stu456', 'Receive', 50.0, 0.002, '12X5YZq7WJYCLPjB8mC7SDHG', '12X5YZq7WJYCLPjB8mC7SDHG', '2024-09-29 12:10:00', 'Confirmed'),
(7, '0xstu789vwx012', 'Send', 75.0, 0.003, '0xF3B8D2E6b7C3e4a9dAAb1234567890DEF', '0x987654321abcdef', '2024-09-30 10:15:00', 'Confirmed'),
(8, '0xvwx345yz0123', 'Receive', 150.0, 0.004, 'GBRPYHIL2CI3JXFGL4P4GH5WV67LYGZME4FOMCNHB3D5E5YB7BHF4NKD', 'GBRPYHIL2CI3JXFGL4P4GH5WV67LYGZME4FOMCNHB3D5E5YB7BHF4NKD', '2024-10-01 13:00:00', 'Confirmed'),
(9, '0xyz567abc890', 'Send', 2000.0, 0.01, 'D9aYeXPVbVhjZc7vW4dDGXX5YNvQ9SxtRW', 'D9aYeXPVbVhjZc7vW4dDGXX5YNvQ9SxtRW', '2024-10-02 15:30:00', 'Confirmed'),
(10, '0xabcd1234efgh', 'Receive', 25.0, 0.001, '4PdZWyS5dL1Yb42bX1V1G7zJnB6V3m6RGA', '4PdZWyS5dL1Yb42bX1V1G7zJnB6V3m6RGA', '2024-10-03 11:45:00', 'Pending');

SELECT * FROM Transactions;
truncate TABLE Transactions;
DROP table Transactions;

CREATE TABLE Exchanges (
    Exchange_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Country VARCHAR(50),
    Website VARCHAR(100),
    Established_Year INT,
    Volume_24h DECIMAL(20,2),
    Number_Of_Trading_Pairs INT,
    Support_Email VARCHAR(100),
    Phone VARCHAR(20),
    Status VARCHAR(20)
);

INSERT INTO Exchanges (Name, Country, Website, Established_Year, Volume_24h, Number_Of_Trading_Pairs, Support_Email, Phone, Status) VALUES
('Binance', 'Cayman Islands', 'https://binance.com', 2017, 30000000000.00, 500, 'support@binance.com', '+18665551234', 'Active'),
('Coinbase', 'USA', 'https://coinbase.com', 2012, 10000000000.00, 200, 'support@coinbase.com', '+18005551234', 'Active'),
('Kraken', 'USA', 'https://kraken.com', 2011, 5000000000.00, 150, 'support@kraken.com', '+18005556789', 'Active'),
('Bitfinex', 'Hong Kong', 'https://bitfinex.com', 2012, 2500000000.00, 300, 'support@bitfinex.com', '+85212345678', 'Active'),
('Bittrex', 'USA', 'https://bittrex.com', 2014, 2000000000.00, 250, 'support@bittrex.com', '+18005552345', 'Active'),
('Huobi', 'Singapore', 'https://huobi.com', 2013, 7000000000.00, 400, 'support@huobi.com', '+6565551234', 'Active'),
('OKEx', 'Malta', 'https://okex.com', 2017, 6000000000.00, 350, 'support@okex.com', '+35621234567', 'Active'),
('Gemini', 'USA', 'https://gemini.com', 2015, 1500000000.00, 100, 'support@gemini.com', '+18005557654', 'Active'),
('KuCoin', 'Seychelles', 'https://kucoin.com', 2017, 4000000000.00, 300, 'support@kucoin.com', '+2481234567', 'Active'),
('Poloniex', 'USA', 'https://poloniex.com', 2014, 1200000000.00, 120, 'support@poloniex.com', '+18005559876', 'Inactive');

SELECT * FROM Exchanges;
truncate TABLE Exchanges;
DROP  TABLE Exchanges;

CREATE TABLE Trading_Pairs (
    Pair_ID INT PRIMARY KEY AUTO_INCREMENT,
    Base_Crypto_ID INT,
    Quote_Crypto_ID INT,
    Exchange_ID INT,
    Price DECIMAL(20,8),
    Volume_24h DECIMAL(20,8),
    Last_Updated DATETIME,
    Status VARCHAR(20),
    Min_Trade_Size DECIMAL(20,8),
    Max_Trade_Size DECIMAL(20,8)
);

INSERT INTO Trading_Pairs (Base_Crypto_ID, Quote_Crypto_ID, Exchange_ID, Price, Volume_24h, Last_Updated, Status, Min_Trade_Size, Max_Trade_Size) VALUES
(1, 2, 1, 27000.00, 1000.50, '2024-10-06 10:00:00', 'Active', 0.0001, 100.00),
(2, 1, 1, 0.037, 2000.00, '2024-10-06 10:05:00', 'Active', 0.001, 500.00),
(3, 1, 2, 0.5, 1500.00, '2024-10-06 10:10:00', 'Active', 1.00, 10000.00),
(4, 2, 3, 150.00, 500.00, '2024-10-06 10:15:00', 'Inactive', 0.01, 50.00),
(5, 1, 4, 1.2, 750.00, '2024-10-06 10:20:00', 'Active', 0.1, 1000.00),
(6, 2, 5, 40.00, 300.00, '2024-10-06 10:25:00', 'Active', 0.01, 200.00),
(7, 1, 6, 25.00, 900.00, '2024-10-06 10:30:00', 'Active', 0.05, 100.00),
(8, 2, 7, 0.3, 100.00, '2024-10-06 10:35:00', 'Active', 10.00, 5000.00),
(9, 1, 8, 0.002, 20000.00, '2024-10-06 10:40:00', 'Active', 100.00, 100000.00),
(10, 2, 9, 40.00, 100.00, '2024-10-06 10:45:00', 'Inactive', 0.001, 10.00);

SELECT * FROM Trading_Pairs;
truncate TABLE Trading_Pairs;
DROP  TABLE Trading_Pairs;

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Pair_ID INT,
    Order_Type VARCHAR(10),
    Price DECIMAL(20,8),
    Amount DECIMAL(20,8),
    Status VARCHAR(20),
    Created_At DATETIME,
    Updated_At DATETIME,
    Fee DECIMAL(20,8)
);

INSERT INTO Orders (User_ID, Pair_ID, Order_Type, Price, Amount, Status, Created_At, Updated_At, Fee) VALUES
(1, 1, 'Buy', 27000.00, 0.1, 'Filled', '2024-09-20 10:00:00', '2024-09-20 10:10:00', 0.01),
(2, 2, 'Sell', 0.038, 10.0, 'Filled', '2024-09-21 11:00:00', '2024-09-21 11:05:00', 0.002),
(3, 3, 'Buy', 0.49, 500.0, 'Cancelled', '2024-09-22 12:00:00', '2024-09-22 12:10:00', 0.005),
(4, 4, 'Sell', 149.00, 2.0, 'Filled', '2024-09-23 13:00:00', '2024-09-23 13:20:00', 0.003),
(5, 5, 'Buy', 1.15, 100.0, 'Filled', '2024-09-24 14:00:00', '2024-09-24 14:30:00', 0.01),
(6, 6, 'Sell', 39.50, 5.0, 'Pending', '2024-09-25 15:00:00', '2024-09-25 15:10:00', 0.002),
(7, 7, 'Buy', 24.00, 10.0, 'Filled', '2024-09-26 16:00:00', '2024-09-26 16:15:00', 0.005),
(8, 8, 'Sell', 0.32, 1000.0, 'Filled', '2024-09-27 17:00:00', '2024-09-27 17:20:00', 0.01),
(9, 9, 'Buy', 0.0019, 10000.0, 'Cancelled', '2024-09-28 18:00:00', '2024-09-28 18:30:00', 0.01),
(10, 10, 'Sell', 39.80, 2.5, 'Filled', '2024-09-29 19:00:00', '2024-09-29 19:10:00', 0.005);

SELECT * FROM Orders;
truncate TABLE Orders;
DROP  TABLE Orders;

CREATE TABLE News (
    News_ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255),
    Content TEXT,
    Published_At DATETIME,
    Source VARCHAR(100),
    Crypto_ID INT,
    Author VARCHAR(100),
    URL VARCHAR(255),
    Category VARCHAR(50),
    Status VARCHAR(20)
);

INSERT INTO News (Title, Content, Published_At, Source, Crypto_ID, Author, URL, Category, Status) VALUES
('Bitcoin Hits New High', 'Bitcoin reached a new all-time high today...', '2024-10-01 09:00:00', 'CryptoNews', 1, 'Alice Smith', 'https://cryptonews.com/bitcoin-high', 'Market', 'Published'),
('Ethereum 2.0 Launch', 'Ethereum announced the launch of ETH 2.0 upgrade...', '2024-09-25 08:30:00', 'EthereumBlog', 2, 'Bob Johnson', 'https://ethereum.org/eth2', 'Update', 'Published'),
('Ripple Faces Legal Challenges', 'Ripple is facing lawsuits...', '2024-09-20 10:00:00', 'LegalCrypto', 3, 'Carol Lee', 'https://legalcrypto.com/ripple', 'Legal', 'Published'),
('Litecoin Adoption Increases', 'More merchants accept Litecoin...', '2024-09-18 12:00:00', 'CryptoDaily', 4, 'David Kim', 'https://cryptodaily.com/litecoin-adoption', 'Market', 'Published'),
('Cardano Smart Contracts', 'Cardano launches smart contract capabilities...', '2024-09-22 11:30:00', 'CardanoTimes', 5, 'Eve Lopez', 'https://cardanotimes.com/smart-contracts', 'Update', 'Published'),
('Polkadot Parachain Auction', 'Polkadot launches parachain auctions...', '2024-09-28 14:00:00', 'PolkaNews', 6, 'Frank Zhang', 'https://polkanews.com/parachain', 'Event', 'Published'),
('Chainlink Oracle Upgrade', 'Chainlink announces major oracle upgrade...', '2024-09-30 09:45:00', 'ChainlinkBlog', 7, 'Grace Park', 'https://chainlinkblog.com/upgrade', 'Update', 'Published'),
('Stellar Partners with Banks', 'Stellar partners with major banks...', '2024-09-27 10:00:00', 'BankingNews', 8, 'Henry Adams', 'https://bankingnews.com/stellar', 'Partnership', 'Published'),
('Dogecoin Memes Surge', 'Dogecoin sees increase in meme popularity...', '2024-09-26 08:00:00', 'MemeCrypto', 9, 'Isabel Moore', 'https://memecrypto.com/dogecoin', 'Community', 'Published'),
('Solana Network Upgrade', 'Solana announces network upgrade...', '2024-10-02 07:30:00', 'SolanaNews', 10, 'Jack White', 'https://solananews.com/upgrade', 'Update', 'Published');

SELECT * FROM News;
truncate TABLE News;
DROP  TABLE News;

	CREATE TABLE Mining_Pools (
    Pool_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Crypto_ID INT,
    Hashrate DECIMAL(20,2),
    Fee_Percentage DECIMAL(5,2),
    Location VARCHAR(100),
    Active_Miners INT,
    Established_Year INT,
    Website VARCHAR(100),
    Status VARCHAR(20)
);

INSERT INTO Mining_Pools (Name, Crypto_ID, Hashrate, Fee_Percentage, Location, Active_Miners, Established_Year, Website, Status) VALUES
('AntPool', 1, 150000.00, 1.5, 'China', 5000, 2014, 'https://antpool.com', 'Active'),
('F2Pool', 1, 120000.00, 2.0, 'China', 4000, 2013, 'https://f2pool.com', 'Active'),
('Ethermine', 2, 100000.00, 1.0, 'Global', 3000, 2016, 'https://ethermine.org', 'Active'),
('SlushPool', 1, 90000.00, 1.0, 'Czech Republic', 2500, 2010, 'https://slushpool.com', 'Active'),
('Poolin', 1, 85000.00, 2.5, 'China', 2000, 2017, 'https://poolin.com', 'Active'),
('ViaBTC', 1, 80000.00, 1.5, 'China', 1500, 2016, 'https://viabtc.com', 'Active'),
('Binance Pool', 1, 75000.00, 1.0, 'Global', 1200, 2020, 'https://pool.binance.com', 'Active'),
('SparkPool', 2, 60000.00, 1.5, 'Global', 1000, 2018, 'https://sparkpool.com', 'Active'),
('BTC.com', 1, 70000.00, 1.0, 'China', 1300, 2016, 'https://btc.com', 'Active'),
('Huobi.pool', 1, 65000.00, 2.0, 'Global', 1100, 2019, 'https://huobipool.com', 'Active');

SELECT * FROM Mining_Pools;
truncate TABLE Mining_Pools;
DROP  TABLE Mining_Pools;

CREATE TABLE ICO_Projects (
    ICO_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Crypto_ID INT,
    Start_Date DATE,
    End_Date DATE,
    Goal_Amount DECIMAL(20,2),
    Raised_Amount DECIMAL(20,2),
    Website VARCHAR(100),
    Status VARCHAR(20),
    Description TEXT
);

INSERT INTO ICO_Projects (Name, Crypto_ID, Start_Date, End_Date, Goal_Amount, Raised_Amount, Website, Status, Description) VALUES
('Project Alpha', 2, '2023-01-01', '2023-03-01', 5000000.00, 6000000.00, 'https://projectalpha.io', 'Successful', 'A new decentralized finance platform'),
('Beta Chain', 5, '2023-02-15', '2023-04-15', 3000000.00, 2500000.00, 'https://betachain.org', 'Failed', 'Blockchain for supply chain management'),
('Gamma Token', 7, '2023-03-10', '2023-05-10', 10000000.00, 9000000.00, 'https://gammatoken.com', 'Successful', 'Oracle solutions for smart contracts'),
('Delta Coin', 1, '2023-04-01', '2023-06-01', 7000000.00, 8000000.00, 'https://deltacoin.io', 'Successful', 'Privacy focused cryptocurrency'),
('Epsilon Network', 6, '2023-05-05', '2023-07-05', 4000000.00, 3500000.00, 'https://epsilonnetwork.com', 'Ongoing', 'Cross-chain interoperability platform'),
('Zeta Finance', 10, '2023-06-20', '2023-08-20', 6000000.00, 6200000.00, 'https://zetafinance.com', 'Successful', 'Decentralized finance ecosystem'),
('Eta Protocol', 3, '2023-07-15', '2023-09-15', 2000000.00, 2100000.00, 'https://etaprotocol.org', 'Successful', 'Payment protocol upgrade'),
('Theta Labs', 9, '2023-08-10', '2023-10-10', 1500000.00, 1400000.00, 'https://thetalabs.com', 'Failed', 'Streaming content delivery network'),
('Iota Network', 8, '2023-09-01', '2023-11-01', 3000000.00, 3200000.00, 'https://iotanetwork.io', 'Successful', 'Internet of Things blockchain'),
('Kappa Token', 4, '2023-10-05', '2023-12-05', 1000000.00, 1100000.00, 'https://kappatoken.com', 'Ongoing', 'Litecoin based token platform');

SELECT * FROM ICO_Projects;
truncate TABLE ICO_Projects;
DROP  TABLE ICO_Projects;






