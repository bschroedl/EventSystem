CREATE DATABASE eventDatabase;
USE eventDatabase;
CREATE TABLE Event
(
    EventID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Date DATE,
    LocationID int,
    PRIMARY KEY (EventID),
    FOREIGN KEY (LocationID) REFERENCES Venue(LocationID)
);
CREATE TABLE Venue
(
    LocationID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    PRIMARY KEY (LocationID)
);