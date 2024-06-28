
CREATE DATABASE registry;
USE registry;

CREATE TABLE IF NOT EXISTS Car (
    Id INT PRIMARY KEY,
    Brand VARCHAR(50),
    Year INT,
    Model VARCHAR(50)
);

INSERT INTO Car (Id, Brand, Year, Model) VALUES
(1, 'Toyota', 2020, 'Corolla'),
(2, 'Honda', 2019, 'Civic'),
(3, 'Ford', 2018, 'Focus');


CREATE DATABASE Information;
USE Information;

CREATE TABLE Person (
    Id INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Email VARCHAR(100)
);

INSERT INTO Person (Id, FirstName, LastName, Age, Email) VALUES
(1, 'John', 'Doe', 30, 'john.doe@example.com'),
(2, 'Jane', 'Smith', 25, 'jane.smith@example.com'),
(3, 'Jim', 'Beam', 40, 'jim.beam@example.com');


USE registry;

CREATE TABLE Sale (
    Id INT PRIMARY KEY,
    Price INT,
    Seller VARCHAR(50),
    Buyer VARCHAR(50)
);

INSERT INTO Sale (Id, Price, Seller, Buyer) VALUES
(1, 15000, 'John Doe', 'Jane Smith'),
(2, 18000, 'Jane Smith', 'Jim Beam'),
(3, 20000, 'Jim Beam', 'John Doe');


