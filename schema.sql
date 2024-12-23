CREATE DATABASE IF NOT EXISTS ProjectDB;
USE ProjectDB;

CREATE TABLE Users (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    OrderAmount DECIMAL(10, 2),
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(ID)
);
