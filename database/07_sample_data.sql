INSERT INTO Learners (FirstName, LastName, DateOfBirth, Gender, ContactNumber, Email)
VALUES ('Sipho', 'Nkosi', '2005-06-15', 'Male', '0712345678', 'sipho@example.com');

INSERT INTO Programs (ProgramName, Description, StartDate, EndDate)
VALUES ('Coding Bootcamp', 'Introductory coding training for youth.', '2024-01-10', '2024-06-10');

INSERT INTO Enrollments (LearnerID, ProgramID, EnrollmentDate, Status)
VALUES (1, 1, '2024-01-10', 'Active');

INSERT INTO Sessions (ProgramID, SessionDate, Topic)
VALUES (1, '2024-01-15', 'HTML Basics');

INSERT INTO Attendance (SessionID, LearnerID, Present)
VALUES (1, 1, 1);

INSERT INTO Staff (FirstName, LastName, Role, Email)
VALUES ('Lindiwe', 'Moyo', 'Program Manager', 'lindiwe@sozofoundation.org');

INSERT INTO Volunteers (FirstName, LastName, AreaOfSupport, Contact)
VALUES ('Thabo', 'Khumalo', 'Mentorship', 'thabo@volunteers.org');

INSERT INTO ProgramFeedback (LearnerID, ProgramID, Rating, Comments)
VALUES (1, 1, 5, 'Great learning experience!');