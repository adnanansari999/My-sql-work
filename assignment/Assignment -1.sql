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

 -- ---------------------database analysis----------------------------------------------
/*
-- 1. SCHOOL DATABASE
T1: Students    : Student_ID, Student_Name, Std, Age, Address  
T2: Teachers    : Teacher_ID, Teacher_Name, Qualification, Experience, Subject  
T3: Staff       : Staff_ID, Staff_Name, Position, Salary, Contact  
T4: Sports      : Sports_ID, Sports_Type, Sports_Coach, Intake, Schedule  
T5: Classrooms  : Classroom_ID, Floor_No, Divisions, Capacity, Classteacher

2. HOSPITAL DATABASE
T1: Patients     : Patient_ID, Name, Age, Gender, Disease  
T2: Doctors      : Doctor_ID, Name, Specialization, Experience, Contact  
T3: Nurses       : Nurse_ID, Name, Shift, Ward_Assigned, Salary  
T4: Rooms        : Room_ID, Type, Availability, Charges, Floor  
T5: Appointments : Appointment_ID, Patient_ID, Doctor_ID, Date, Time

3. LIBRARY DATABASE
T1: Books        : Book_ID, Title, Author, Genre, Availability  
T2: Members      : Member_ID, Name, Join_Date, Membership_Type, Address  
T3: Staff        : Staff_ID, Name, Role, Contact, Salary  
T4: Issues       : Issue_ID, Book_ID, Member_ID, Issue_Date, Return_Date  
T5: Sections     : Section_ID, Name, Floor, Category, Incharge

4. BANK DATABASE
T1: Customers    : Customer_ID, Name, Address, Contact, DOB  
T2: Accounts     : Account_ID, Customer_ID, Account_Type, Balance, Branch  
T3: Transactions : Transaction_ID, Account_ID, Date, Amount, Type  
T4: Loans        : Loan_ID, Customer_ID, Loan_Amount, Interest_Rate, Term  
T5: Employees    : Employee_ID, Name, Position, Department, Salary

5. AIRLINE DATABASE
T1: Flights      : Flight_ID, Airline, Origin, Destination, Duration  
T2: Passengers   : Passenger_ID, Name, Gender, Age, Passport_No  
T3: Bookings     : Booking_ID, Flight_ID, Passenger_ID, Date, Seat_No  
T4: Crew         : Crew_ID, Name, Role, Experience, Contact  
T5: Airports     : Airport_ID, Name, Location, Code, Country

6. HOTEL DATABASE
T1: Guests       : Guest_ID, Name, Check_In, Check_Out, Room_No  
T2: Rooms        : Room_ID, Type, Status, Price, Floor  
T3: Staff        : Staff_ID, Name, Department, Shift, Contact  
T4: Bookings     : Booking_ID, Guest_ID, Room_ID, Booking_Date, Payment_Status  
T5: Services     : Service_ID, Service_Name, Cost, Duration, Provider

7. MOVIE THEATER DATABASE
T1: Movies       : Movie_ID, Title, Genre, Duration, Language  
T2: Shows        : Show_ID, Movie_ID, Date, Time, Screen_No  
T3: Tickets      : Ticket_ID, Show_ID, Seat_No, Price, Status  
T4: Staff        : Staff_ID, Name, Role, Shift, Contact  
T5: Screens      : Screen_ID, Capacity, Sound_System, Type, Status

8. E-COMMERCE DATABASE
T1: Customers    : Customer_ID, Name, Email, Address, Join_Date  
T2: Products     : Product_ID, Name, Category, Price, Stock  
T3: Orders       : Order_ID, Customer_ID, Date, Total_Amount, Status  
T4: Payments     : Payment_ID, Order_ID, Method, Amount, Payment_Date  
T5: Vendors      : Vendor_ID, Name, Product_Type, Contact, Rating

9. COLLEGE DATABASE
T1: Students     : Student_ID, Name, Course, Year, Email  
T2: Faculty      : Faculty_ID, Name, Department, Qualification, Experience  
T3: Courses      : Course_ID, Name, Credits, Semester, Instructor  
T4: Library      : Book_ID, Title, Author, Department, Availability  
T5: Hostels      : Hostel_ID, Name, Capacity, Warden, Contact

10. RESTAURANT DATABASE
T1: Customers    : Customer_ID, Name, Contact, Table_No, Date  
T2: Menu         : Item_ID, Name, Category, Price, Availability  
T3: Orders       : Order_ID, Customer_ID, Item_ID, Quantity, Time  
T4: Staff        : Staff_ID, Name, Role, Shift, Salary  
T5: Tables       : Table_ID, Capacity, Location, Status, Assigned_Staff

11. ONLINE EDUCATION DATABASE
T1: Users        : User_ID, Name, Role, Email, Join_Date  
T2: Courses      : Course_ID, Title, Instructor_ID, Duration, Category  
T3: Instructors  : Instructor_ID, Name, Qualification, Experience, Contact  
T4: Enrollments  : Enrollment_ID, User_ID, Course_ID, Enroll_Date, Status  
T5: Materials    : Material_ID, Course_ID, Type, Title, Upload_Date

12. GYM MANAGEMENT DATABASE
T1: Members      : Member_ID, Name, Age, Gender, Membership_Type  
T2: Trainers     : Trainer_ID, Name, Specialization, Contact, Shift  
T3: Sessions     : Session_ID, Trainer_ID, Member_ID, Date, Time  
T4: Equipment    : Equipment_ID, Name, Type, Condition, Purchase_Date  
T5: Payments     : Payment_ID, Member_ID, Amount, Date, Mode

13. VEHICLE RENTAL DATABASE
T1: Customers    : Customer_ID, Name, License_No, Contact, Address  
T2: Vehicles     : Vehicle_ID, Type, Model, Availability, Rate  
T3: Bookings     : Booking_ID, Customer_ID, Vehicle_ID, Start_Date, End_Date  
T4: Staff        : Staff_ID, Name, Role, Shift, Salary  
T5: Maintenance  : Maintenance_ID, Vehicle_ID, Date, Issue, Cost

14. SUPERMARKET DATABASE
T1: Products     : Product_ID, Name, Category, Price, Stock  
T2: Suppliers    : Supplier_ID, Name, Product_Type, Contact, Address  
T3: Customers    : Customer_ID, Name, Email, Phone, Points  
T4: Sales        : Sale_ID, Product_ID, Customer_ID, Date, Quantity  
T5: Staff        : Staff_ID, Name, Department, Salary, Contact

15. REAL ESTATE DATABASE
T1: Properties   : Property_ID, Type, Location, Price, Status  
T2: Agents       : Agent_ID, Name, Contact, Area_Covered, Experience  
T3: Clients      : Client_ID, Name, Contact, Requirement, Budget  
T4: Viewings     : Viewing_ID, Property_ID, Client_ID, Date, Feedback  
T5: Transactions : Transaction_ID, Property_ID, Buyer_ID, Amount, Date

16. PHARMACY DATABASE
T1: Medicines    : Medicine_ID, Name, Type, Price, Expiry_Date  
T2: Suppliers    : Supplier_ID, Name, Contact, Medicine_Type, Rating  
T3: Sales        : Sale_ID, Medicine_ID, Quantity, Date, Customer_Name  
T4: Inventory    : Inventory_ID, Medicine_ID, Stock_Level, Reorder_Level, Status  
T5: Staff        : Staff_ID, Name, Role, Shift, Contact

17. LOGISTICS DATABASE
T1: Shipments    : Shipment_ID, Origin, Destination, Weight, Status  
T2: Drivers      : Driver_ID, Name, License_No, Contact, Availability  
T3: Vehicles     : Vehicle_ID, Type, Capacity, Status, Assigned_Driver  
T4: Routes       : Route_ID, Start_Location, End_Location, Distance, ETA  
T5: Clients      : Client_ID, Name, Contact, Company, Address

18. MUSIC STREAMING DATABASE
T1: Users        : User_ID, Name, Email, Subscription, Join_Date  
T2: Songs        : Song_ID, Title, Artist, Genre, Duration  
T3: Playlists    : Playlist_ID, User_ID, Name, Created_Date, Total_Songs  
T4: Artists      : Artist_ID, Name, Country, Genre, Debut_Year  
T5: Albums       : Album_ID, Title, Release_Date, Artist_ID, Genre

19. SOCIAL MEDIA DATABASE
T1: Users        : User_ID, Name, Email, Join_Date, Status  
T2: Posts        : Post_ID, User_ID, Content, Date, Likes  
T3: Comments     : Comment_ID, Post_ID, User_ID, Content, Date  
T4: Friends      : Friend_ID, User1_ID, User2_ID, Status, Since  
T5: Messages     : Message_ID, Sender_ID, Receiver_ID, Content, Timestamp

20. JOB PORTAL DATABASE
T1: Jobseekers   : Seeker_ID, Name, Email, Resume, Skills  
T2: Employers    : Employer_ID, Company_Name, Contact, Industry, Location  
T3: Jobs         : Job_ID, Employer_ID, Title, Salary, Requirements  
T4: Applications : Application_ID, Seeker_ID, Job_ID, Status, Date  
T5: Interviews   : Interview_ID, Application_ID, Date, Mode, Feedback

21. INSURANCE DATABASE
T1: Clients      : Client_ID, Name, Contact, Address, DOB  
T2: Policies     : Policy_ID, Type, Premium, Duration, Coverage  
T3: Agents       : Agent_ID, Name, Contact, Region, Experience  
T4: Claims       : Claim_ID, Policy_ID, Client_ID, Date, Amount  
T5: Payments     : Payment_ID, Client_ID, Policy_ID, Amount, Date

22. CONSTRUCTION DATABASE
T1: Projects     : Project_ID, Name, Location, Budget, Duration  
T2: Contractors  : Contractor_ID, Name, Specialty, Contact, License  
T3: Employees    : Employee_ID, Name, Role, Shift, Salary  
T4: Materials    : Material_ID, Name, Type, Quantity, Supplier  
T5: Tasks        : Task_ID, Project_ID, Assigned_To, Deadline, Status

23. EVENT MANAGEMENT DATABASE
T1: Events       : Event_ID, Name, Type, Date, Location  
T2: Clients      : Client_ID, Name, Contact, Email, Event_Type  
T3: Vendors      : Vendor_ID, Name, Service, Contact, Rating  
T4: Staff        : Staff_ID, Name, Role, Event_ID, Shift  
T5: Bookings     : Booking_ID, Client_ID, Event_ID, Date, Status

24. AGRICULTURE DATABASE
T1: Farmers      : Farmer_ID, Name, Location, Land_Size, Crop_Type  
T2: Crops        : Crop_ID, Name, Season, Yield, Price  
T3: Tools        : Tool_ID, Name, Type, Cost, Usage  
T4: Buyers       : Buyer_ID, Name, Contact, Crop_Interested, Quantity  
T5: Sales        : Sale_ID, Crop_ID, Buyer_ID, Quantity, Date

25. NGO DATABASE
T1: Volunteers   : Volunteer_ID, Name, Contact, Skill, Availability  
T2: Projects     : Project_ID, Name, Type, Start_Date, End_Date  
T3: Donors       : Donor_ID, Name, Contact, Amount_Donated, Donation_Date  
T4: Events       : Event_ID, Name, Location, Date, Purpose  
T5: Beneficiaries: Beneficiary_ID, Name, Age, Need_Type, Address

26. LAW FIRM DATABASE
T1: Clients       : Client_ID, Name, Contact, Case_Type, Address  
T2: Lawyers       : Lawyer_ID, Name, Specialization, Experience, Contact  
T3: Cases         : Case_ID, Client_ID, Lawyer_ID, Status, Start_Date  
T4: Hearings      : Hearing_ID, Case_ID, Date, Court, Outcome  
T5: Documents     : Document_ID, Case_ID, Title, Type, Upload_Date

27. SPACE AGENCY DATABASE
T1: Missions      : Mission_ID, Name, Type, Launch_Date, Status  
T2: Astronauts    : Astronaut_ID, Name, Age, Experience, Nationality  
T3: Rockets       : Rocket_ID, Model, Capacity, Fuel_Type, Manufacturer  
T4: Satellites    : Satellite_ID, Name, Orbit_Type, Launch_Date, Status  
T5: Scientists    : Scientist_ID, Name, Field, Qualification, Lab_Assigned


28. PET CARE DATABASE
T1: Pets          : Pet_ID, Name, Species, Breed, Age  
T2: Owners        : Owner_ID, Name, Contact, Address, Email  
T3: Appointments  : Appointment_ID, Pet_ID, Date, Vet_Name, Purpose  
T4: Medications   : Med_ID, Name, Type, Dosage, Prescribed_For  
T5: Staff         : Staff_ID, Name, Role, Shift, Contact

29. TOURNAMENT DATABASE
T1: Teams         : Team_ID, Name, Coach, Category, Country  
T2: Players       : Player_ID, Name, Team_ID, Age, Position  
T3: Matches       : Match_ID, Team1_ID, Team2_ID, Date, Venue  
T4: Scores        : Score_ID, Match_ID, Team_ID, Points, Result  
T5: Referees      : Referee_ID, Name, Experience, Country, Contact

30. TRANSPORTATION DATABASE
T1: Vehicles      : Vehicle_ID, Type, Capacity, Fuel_Type, Status  
T2: Drivers       : Driver_ID, Name, License_No, Experience, Contact  
T3: Routes        : Route_ID, Source, Destination, Distance, Duration  
T4: Trips         : Trip_ID, Vehicle_ID, Route_ID, Date, Time  
T5: Passengers    : Passenger_ID, Name, Age, Ticket_ID, Contact
*/


-- -------------------table related queries--------------
/* 5. AIRLINE DATABASE 
T1: Flights : Flight_ID, Airline, Origin, Destination, Duration 
T2: Passengers : Passenger_ID, Name, Gender, Age, Passport_No
T3: Bookings : Booking_ID, Flight_ID, Passenger_ID, Date, Seat_No
T4: Crew : Crew_ID,Name, Role, Experience, Contact 
T5: Airports : Airport_ID, Name, Location, Code, Country 
*/

create database AIRLINE;

USE AIRLINE;



-- T1: Flights
CREATE TABLE Flights (
    Flight_ID VARCHAR(10) PRIMARY KEY,
    Airline VARCHAR(50),
    Origin VARCHAR(50),
    Destination VARCHAR(50),
    Duration INT -- in minutes
);

-- Insert into Flights
INSERT INTO Flights VALUES
('FL001', 'SkyJet Airlines', 'New York', 'London', 420),
('FL002', 'Oceanic Air', 'Tokyo', 'Los Angeles', 660),
('FL003', 'AirNova', 'Paris', 'Dubai', 370),
('FL004', 'JetZone', 'Berlin', 'Rome', 110),
('FL005', 'AeroFly', 'Sydney', 'Singapore', 480),
('FL006', 'SkyJet Airlines', 'Delhi', 'Bangkok', 240),
('FL007', 'AirNova', 'Toronto', 'Vancouver', 320),
('FL008', 'JetZone', 'Madrid', 'Lisbon', 90),
('FL009', 'Oceanic Air', 'Beijing', 'Seoul', 150),
('FL010', 'AeroFly', 'Chicago', 'Miami', 180);

select * from Flights;

truncate table Flights;

drop table Flights;

-- T2: Passengers
CREATE TABLE Passengers (
    Passenger_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    Passport_No VARCHAR(20)
);

-- Insert into Passengers
INSERT INTO Passengers VALUES
('P001', 'Alice Johnson', 'Female', 28, 'M1234567'),
('P002', 'Bob Smith', 'Male', 35, 'K9876543'),
('P003', 'Clara Wang', 'Female', 41, 'Z7654321'),
('P004', 'David Brown', 'Male', 22, 'B1112223'),
('P005', 'Emily Davis', 'Female', 30, 'X2345678'),
('P006', 'Franklin Lee', 'Male', 38, 'Y3456789'),
('P007', 'Grace Kim', 'Female', 26, 'H4567890'),
('P008', 'Henry White', 'Male', 44, 'W5678901'),
('P009', 'Isabella Cruz', 'Female', 31, 'G6789012'),
('P010', 'James Parker', 'Male', 29, 'J7890123');

select * from Passengers;

truncate table Passengers;

drop table Passengers;

-- T3: Bookings
CREATE TABLE Bookings (
    Booking_ID VARCHAR(10) PRIMARY KEY,
    Flight_ID VARCHAR(10),
    Passenger_ID VARCHAR(10),
    Date DATE,
    Seat_No VARCHAR(5),
    FOREIGN KEY (Flight_ID) REFERENCES Flights(Flight_ID),
    FOREIGN KEY (Passenger_ID) REFERENCES Passengers(Passenger_ID)
);

INSERT INTO Bookings VALUES
('B001', 'FL001', 'P001', '2025-08-01', '12A'),
('B002', 'FL002', 'P002', '2025-08-02', '14B'),
('B003', 'FL003', 'P003', '2025-08-03', '16C'),
('B004', 'FL004', 'P004', '2025-08-04', '18D'),
('B005', 'FL005', 'P005', '2025-08-05', '20E'),
('B006', 'FL006', 'P006', '2025-08-06', '22F'),
('B007', 'FL007', 'P007', '2025-08-07', '24G'),
('B008', 'FL008', 'P008', '2025-08-08', '26H'),
('B009', 'FL009', 'P009', '2025-08-09', '28J'),
('B010', 'FL010', 'P010', '2025-08-10', '30K');

select * from Bookings;

truncate table Bookings;

drop table Bookings;

-- T4: Crew
CREATE TABLE Crew (
    Crew_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Experience INT, -- in years
    Contact VARCHAR(20)
);

INSERT INTO Crew VALUES
('C001', 'Captain Alex Monroe', 'Pilot', 15, '+1234567890'),
('C002', 'Sarah Green', 'Flight Attendant', 7, '+1987654321'),
('C003', 'Michael Reed', 'Co-Pilot', 10, '+1876543210'),
('C004', 'Emily Stone', 'Flight Attendant', 5, '+1765432109'),
('C005', 'Daniel Young', 'Pilot', 20, '+1654321098'),
('C006', 'Linda Hall', 'Cabin Crew', 8, '+1543210987'),
('C007', 'Robert King', 'Flight Engineer', 12, '+1432109876'),
('C008', 'Sophia Hill', 'Flight Attendant', 4, '+1321098765'),
('C009', 'Jack Miller', 'Pilot', 18, '+1210987654'),
('C010', 'Anna Scott', 'Co-Pilot', 6, '+1109876543');

select * from Crew;

truncate table Crew;

drop table Crew;

-- T5: Airports
CREATE TABLE Airports (
    Airport_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(50),
    Code VARCHAR(10),
    Country VARCHAR(50)
);

INSERT INTO Airports VALUES
('A001', 'John F. Kennedy International', 'New York', 'JFK', 'USA'),
('A002', 'Heathrow Airport', 'London', 'LHR', 'UK'),
('A003', 'Haneda Airport', 'Tokyo', 'HND', 'Japan'),
('A004', 'Charles de Gaulle', 'Paris', 'CDG', 'France'),
('A005', 'Changi Airport', 'Singapore', 'SIN', 'Singapore'),
('A006', 'Sydney Airport', 'Sydney', 'SYD', 'Australia'),
('A007', 'Frankfurt Airport', 'Frankfurt', 'FRA', 'Germany'),
('A008', 'Beijing Capital Airport', 'Beijing', 'PEK', 'China'),
('A009', 'Los Angeles Intl', 'Los Angeles', 'LAX', 'USA'),
('A010', 'Dubai Intl', 'Dubai', 'DXB', 'UAE');

select * from Airports;

truncate table Airports;

drop table Airports;
