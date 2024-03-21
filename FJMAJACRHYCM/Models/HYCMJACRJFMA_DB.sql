create database HYCMJACRJFMA_DB
use HYCMJACRJFMA_DB

-- Crear tabla "roles"
CREATE TABLE Roles (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Description VARCHAR(50) DEFAULT  NULL
)
GO
-- Crear tabla "users"
CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Password_ VARCHAR(32) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Status TINYINT NOT NULL DEFAULT 1,
    Image VARBINARY(MAX), 
	Restablecer bit,
Confirmado bit,
    RoleId INT NOT NULL,
    FOREIGN KEY (RoleId) REFERENCES Roles(Id)

)
GO

CREATE TABLE Employees (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) DEFAULT   NULL,
    Phone VARCHAR(20) NOT NULL
)
GO

-- Crear tabla "Addresses"
CREATE TABLE Addresses (
 Id INT IDENTITY(1,1) PRIMARY KEY,
 EmployeeId INT NOT NULL,
 Street VARCHAR(100) NOT NULL,
 City VARCHAR(50) NOT NULL,
 State VARCHAR(50) NOT NULL,
 Country VARCHAR(50) NOT NULL,
 PostalCode VARCHAR(20) DEFAULT NULL,
 FOREIGN KEY (EmployeeId) REFERENCES Employees(Id) ON DELETE CASCADE
)
