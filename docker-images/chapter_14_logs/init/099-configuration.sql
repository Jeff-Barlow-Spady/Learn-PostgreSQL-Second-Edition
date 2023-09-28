ALTER SYSTEM SET logging_collector TO on;
ALTER SYSTEM SET log_destination   TO 'stderr,csvlog,jsonlog';
ALTER SYSTEM SET log_directory     TO 'log';
ALTER SYSTEM SET log_filename      TO 'postgresql-%Y-%m-%d.log';
ALTER SYSTEM SET log_rotation_age  TO '1d';
ALTER SYSTEM SET log_rotation_size TO '50MB';


ALTER SYSTEM SET log_min_duration_statement  TO 500;
ALTER SYSTEM SET log_min_duration_sample     TO 100;
ALTER SYSTEM SET log_statement_sample_rate   TO 0.8;
ALTER SYSTEM SET log_transaction_sample_rate TO 0.5;

ALTER SYSTEM SET log_line_prefix    TO '%t [%p]: [%l] user=%u,db=%d,app=%a,client=%h';
ALTER SYSTEM SET log_connections    TO on;
ALTER SYSTEM SET log_disconnections TO on;
ALTER SYSTEM SET log_checkpoints    TO on;

ALTER SYSTEM SET log_lock_waits TO 0;
ALTER SYSTEM SET log_temp_files TO 0;
ALTER SYSTEM SET log_min_duration_statement TO 0;

ALTER SYSTEM SET shared_preload_libraries TO 'pgaudit';
