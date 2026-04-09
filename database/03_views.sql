CREATE VIEW vw_ActiveEnrollments AS
SELECT L.LearnerID, L.FirstName, L.LastName, P.ProgramName, E.Status
FROM Enrollments E
JOIN Learners L ON E.LearnerID = L.LearnerID
JOIN Programs P ON E.ProgramID = P.ProgramID
WHERE E.Status = 'Active';

CREATE VIEW vw_AttendanceSummary AS
SELECT L.LearnerID, L.FirstName, L.LastName, COUNT(A.AttendanceID) AS SessionsAttended
FROM Learners L
JOIN Attendance A ON L.LearnerID = A.LearnerID
WHERE A.Present = 1
GROUP BY L.LearnerID, L.FirstName, L.LastName;