INSERT INTO Venue (`Name`, `Address`)
VALUES ('Plaza Palace', '202 Main St');

SELECT * FROM `Venue`;

INSERT INTO `Event` (`Name`, `Date`, `LocationID`)
VALUES ('Pizza Party', '2025-01-29', (SELECT `LocationID` from `Venue` WHERE `Name` = 'Plaza Palace'));

SELECT * FROM `Event`;