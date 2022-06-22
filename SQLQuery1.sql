--Use AddressBookService;
--CREATE TABLE AddressBook (FirstName VARCHAR(20),LastName VARCHAR(20),Address VARCHAR(50),City VARCHAR(20),State VARCHAR(15),Zip INTEGER,
--PhoneNo INTEGER PRIMARY KEY,Email VARCHAR(30))

--INSERT INTO AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNo,Email) VALUES ('Hemanth','B','27,ashanivas','chennai','Tamil nadu',678876,980789,'hemanth@gm.com');

--SELECT * FROM AddressBook;

--INSERT INTO AddressBook VALUES('Vysagh','B','1,Kg Garden,3rd block','kovai','Tamil Nadu',600009,99887788,'vy@ga.in');
--INSERT INTO AddressBook VALUES('jubith','k','1,jayes bhavan3rd block','kannur','Tamil Nadu',611009,99887766,'jubi@ga.in');

--SELECT * FROM AddressBook WHERE Firstname = 'jubith';

--UPDATE AddressBook SET State = 'Kerala' WHERE FirstName = 'jubith';

--DELETE FROM AddressBook WHERE FirstName = 'jubith';

--SELECT * FROM AddressBook WHERE City = 'chennai';

--SELECT * FROM AddressBook WHERE State = 'Tamil Nadu';

--SELECT COUNT(*) FROM AddressBook WHERE State = 'Tamil Nadu';

--SELECT * FROM AddressBook ORDER BY FirstName;

--ALTER TABLE AddressBook ADD Type VARCHAR(20);

--UPDATE AddressBook SET Type='Friends' WHERE FirstName = 'Hemanth';

--UPDATE AddressBook SET Type='Family' WHERE FirstName = 'Vysagh' OR FirstName = 'jubith';

--SELECT COUNT(*) FROM AddressBook WHERE Type='Family';

SELECT * FROM AddressBook;

USE AddressBookService;

--- ER Usecases ----

CREATE TABLE AddressBookTypes (TypeId int PRIMARY KEY IDENTITY(1,1), BookType VARCHAR(255));

INSERT INTO AddressBookTypes VALUES('Friends'),('Family'),('Colleagues');


SELECT * FROM AddressBookTypes;

ALTER TABLE AddressBook DROP COLUMN Type;

select * from AddressBook;

ALTER TABLE AddressBook ADD Type_Id INT FOREIGN KEY REFERENCES AddressBook(PhoneNo)

USE AddressBookService;

DELETE AddressBook WHERE State = 'Tamil Nadu';