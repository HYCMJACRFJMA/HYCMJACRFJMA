
create database HYCMJACRJFMA_DB;

use HYCMJACRJFMA_DB

-- Crear tabla "roles"
CREATE TABLE Roles (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name_ VARCHAR(50) NOT NULL,
    Description_ VARCHAR(50) DEFAULT  NULL
);
GO
-- Crear tabla "users"
CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Password_ VARCHAR(32) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Status_ TINYINT NOT NULL DEFAULT 1,
    Image_ VARBINARY(MAX), 
	Restablecer bit,
Confirmado bit,
    RoleId INT NOT NULL,
    FOREIGN KEY (RoleId) REFERENCES Roles(Id)

);
GO

CREATE TABLE Employees (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) DEFAULT   NULL,
    Phone VARCHAR(20) NOT NULL
);
GO

-- Crear tabla "Addresses"
CREATE TABLE Addresses (
 Id INT IDENTITY(1,1) PRIMARY KEY,
 EmployeeId INT NOT NULL,
 Street VARCHAR(100) NOT NULL,
 City VARCHAR(50) NOT NULL,
 State_ VARCHAR(50) NOT NULL,
 Country VARCHAR(50) NOT NULL,
 PostalCode VARCHAR(20) DEFAULT NULL,
 FOREIGN KEY (EmployeeId) REFERENCES Employees(Id) ON DELETE CASCADE
);
     
     Scaffold-DbContext "Data Source=.;Initial Catalog=HYCMJACRJFMA_DB;Integrated Security=True;Encrypt=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models
