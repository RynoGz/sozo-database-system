CREATE TRIGGER trg_LogAttendance
ON Attendance
AFTER INSERT
AS
BEGIN
    PRINT 'Attendance recorded successfully.';
END;

CREATE TRIGGER trg_UpdateFeedback
ON ProgramFeedback
AFTER UPDATE
AS
BEGIN
    PRINT 'Feedback updated for a program.';
END;