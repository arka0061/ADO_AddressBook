--UC1 Create Database
Create Database AddressBookService

--UC2 Create Table
Create TABLE Address_Book(
FirstName varchar(100),
LastName varchar(100),
Address varchar(250),
City varchar(100),
State varchar(100),
Zip BigInt,
PhoneNumber BigInt,
EmailAddress varchar(200))

--UC3 Insert Contacts To AddressBook
INSERT INTO Address_Book(FirstName,LastName,Address,City,State,Zip,PhoneNumber,EmailAddress) 
values
('Harsh','Agarwal','Howrah','Kadamtala','West Bengal',722201,9842905050,'harsh12@gmail.com'),
('Ayush','Naidu','Heritage Road','Chennai','Tamil Nadu',134002,98402000,'atushjk@gmail.com'),
('Ankita','Joseph','Avenue Road','Lucknow','Uttar Pradesh',115627,9807651789,'anit@gmail.com'),
('Ram','Gopal','Lockheaet','Noida','Uttar Pradesh',115627,9801765434,'ram12@gmail.com'),
('Tenzin','Seriang','GreenPark','Jorhat','Assam',122298,9256378299,'tenzi@gmail.com');

Select * from Address_Book

--UC4 Edit Existing Contact Using First Name
UPDATE Address_Book
SET PhoneNumber=8790765678
WHERE FirstName='Tenzin'

--UC5 Delete a Person Using First Name
DELETE FROM Address_Book
WHERE FirstName='Tenzin'

--UC6 Get Contact information by city or state
SELECT * 
FROM Address_Book
WHERE City='Kadamtala' or State='Tamil Nadu'

--UC7 Count Contacts Living by State or City
INSERT INTO Address_Book(FirstName,LastName,Address,City,State,Zip,PhoneNumber,EmailAddress) 
values('Arka','Parui','Howrah','Kadamtala','West Bengal',722431,6242905050,'ark12@gmail.com')

SELECT Count(*),State,City
FROM Address_Book
GROUP BY State,City

--UC8 Sort Names Alphabetically
SELECT *
FROM Address_Book
WHERE City='Kadamtala'
ORDER BY(FirstName)

--UC9 AddressBookName and Type Added
ALTER TABLE Address_Book
ADD AddressBookName varchar(200),
Type varchar(200);

UPDATE Address_Book
SET AddressBookName='FriendName',Type='Friends'
WHERE FirstName='Ayush' or FirstName='Harsh'

UPDATE Address_Book
SET AddressBookName='Brothers',Type='Family'
WHERE FirstName='Ram' or FirstName='Arka'

UPDATE Address_Book
SET AddressBookName='Colleague',Type='Profession'
WHERE FirstName='Ankita' 

--UC10 Get Contacts By Type
SELECT Count(*),Type,AddressBookName
FROM Address_Book
GROUP BY Type,AddressBookName

--UC11 Add Peron To Friend And Family
UPDATE Address_Book
SET AddressBookName='FriendName',Type='Friends'
WHERE FirstName='Ayush' or FirstName='Harsh'

UPDATE Address_Book
SET AddressBookName='Brothers',Type='Family'
WHERE FirstName='Ram' or FirstName='Arka'
