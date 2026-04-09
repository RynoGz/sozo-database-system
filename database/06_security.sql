CREATE LOGIN sozo_admin WITH PASSWORD = 'Admin@123';
CREATE LOGIN sozo_coordinator WITH PASSWORD = 'Coord@123';

CREATE USER sozo_admin FOR LOGIN sozo_admin;
CREATE USER sozo_coordinator FOR LOGIN sozo_coordinator;

ALTER ROLE db_owner ADD MEMBER sozo_admin;

GRANT SELECT, INSERT, UPDATE ON Learners TO sozo_coordinator;
GRANT SELECT ON vw_ActiveEnrollments TO sozo_coordinator;
GRANT EXECUTE ON sp_RecordAttendance TO sozo_coordinator;