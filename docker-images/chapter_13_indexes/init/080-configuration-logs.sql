ALTER SYSTEM SET logging_collector TO on;
ALTER SYSTEM SET log_destination   TO 'stderr';
ALTER SYSTEM SET log_directory     TO 'log';
ALTER SYSTEM SET log_filename      TO 'postgresql.log';
ALTER SYSTEM SET log_rotation_age  TO '1d';
ALTER SYSTEM SET log_rotation_size TO '50MB';


