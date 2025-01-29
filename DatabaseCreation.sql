CREATE DATABASE eventDatabase;
USE eventDatabase;
CREATE TABLE Event
(
    EventID int NOT NULL AUTO_INCREMENT,
    EventName varchar(255) NOT NULL,
    PRIMARY KEY (EventID)
)