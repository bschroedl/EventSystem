-- Test data from ChatGPT

-- 1. Inserting into Venue
INSERT INTO Venue (Name, Address)
VALUES
('Stadium A', '123 Main St, Cityville'),
('Conference Center', '456 Park Ave, Townsville'),
('Theatre X', '789 Broadway, New York');

-- 2. Inserting into Events
INSERT INTO Events (Name, EventDate, LocationID)
VALUES
('Music Concert', '2025-05-01 19:00:00', 1),
('Tech Expo', '2025-06-15 09:00:00', 2),
('Broadway Play', '2025-07-20 20:00:00', 3);

-- 3. Inserting into Attendants
INSERT INTO Attendants (Name, Email, Address)
VALUES
('Alice Johnson', 'alice.johnson@email.com', '123 Elm St, Cityville'),
('Bob Smith', 'bob.smith@email.com', '456 Pine St, Townsville'),
('Charlie Brown', 'charlie.brown@email.com', '789 Oak St, New York');

-- 4. Inserting into Tickets
INSERT INTO Tickets (Price, EventID, AttendantID)
VALUES
(50.00, 1, 1),
(75.00, 1, 2),
(100.00, 2, 1),
(60.00, 3, 3);