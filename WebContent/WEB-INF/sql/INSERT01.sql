SELECT * FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
(CustomerID, CustomerName, 
ContactName, Address, 
City, PostalCode, Country)
VALUES
(92, 'Kim', 'Lee', 'Gangnam', 'Seoul', '00000', 'Korea');

INSERT INTO Customers
VALUES
(93, 'Choi', 'Hong', 'Gangnam', 'Seoul', '00000', 'Korea');

INSERT INTO Customers
(CustomerID, CustomerName, ContactName)
VALUES
(95, 'Back', 'Seoul');

INSERT INTO Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Trump', 'Donal', 'NY', 'NY', '000', 'US');

SELECT * FROM Employees
ORDER BY EmployeeID DESC;

CREATE TABLE Test
(
	ID INT,
    Name VARCHAR(30),
    ReserveDate DATE,
    RoomNum INT
);

CREATE TABLE MemberInfo
(
	ID INT,
    Password VARCHAR(30),
    Name VARCHAR(30),
    Age INT,
    Email VARCHAR(30)
);

ALTER TABLE MemberInfo MODIFY COLUMN ID VARCHAR(20);
ALTER TABLE MemberInfo ADD primary key(ID);
SELECT * FROM MemberInfo;

SELECT Password From MemberInfo WHERE ID = 'cwj';
-- 테이블 설명 보기
DESC Customers;
DESC Employees;
DESC Test;
DESC MemberInfo;