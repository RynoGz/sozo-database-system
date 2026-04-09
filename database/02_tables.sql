CREATE TABLE Learners (
    LearnerID INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    Gender NVARCHAR(10),
    ContactNumber NVARCHAR(20),
    Email NVARCHAR(100)
);

CREATE TABLE Programs (
    ProgramID INT PRIMARY KEY IDENTITY,
    ProgramName NVARCHAR(100),
    Description NVARCHAR(MAX),
    StartDate DATE,
    EndDate DATE
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY,
    LearnerID INT FOREIGN KEY REFERENCES Learners(LearnerID),
    ProgramID INT FOREIGN KEY REFERENCES Programs(ProgramID),
    EnrollmentDate DATE,
    Status NVARCHAR(20)
);

CREATE TABLE Sessions (
    SessionID INT PRIMARY KEY IDENTITY,
    ProgramID INT FOREIGN KEY REFERENCES Programs(ProgramID),
    SessionDate DATE,
    Topic NVARCHAR(200)
);

CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY IDENTITY,
    SessionID INT FOREIGN KEY REFERENCES Sessions(SessionID),
    LearnerID INT FOREIGN KEY REFERENCES Learners(LearnerID),
    Present BIT,
    Timestamp DATETIME DEFAULT GETDATE()
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Role NVARCHAR(100),
    Email NVARCHAR(100)
);

CREATE TABLE Volunteers (
    VolunteerID INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    AreaOfSupport NVARCHAR(100),
    Contact NVARCHAR(100)
);

CREATE TABLE ProgramFeedback (
    FeedbackID INT PRIMARY KEY IDENTITY,
    LearnerID INT FOREIGN KEY REFERENCES Learners(LearnerID),
    ProgramID INT FOREIGN KEY REFERENCES Programs(ProgramID),
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comments NVARCHAR(MAX)
);