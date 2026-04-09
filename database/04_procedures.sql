CREATE PROCEDURE sp_EnrollLearner
    @LearnerID INT,
    @ProgramID INT,
    @EnrollmentDate DATE,
    @Status NVARCHAR(20)
AS
BEGIN
    INSERT INTO Enrollments (LearnerID, ProgramID, EnrollmentDate, Status)
    VALUES (@LearnerID, @ProgramID, @EnrollmentDate, @Status);
END;

CREATE PROCEDURE sp_RecordAttendance
    @SessionID INT,
    @LearnerID INT,
    @Present BIT
AS
BEGIN
    INSERT INTO Attendance (SessionID, LearnerID, Present)
    VALUES (@SessionID, @LearnerID, @Present);
END;