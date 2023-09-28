ALTER SYSTEM SET auto_explain.log_min_duration TO '100ms';
ALTER SYSTEM SET auto_explain.log_level  TO INFO;
ALTER SYSTEM SET auto_explain.log_nested_statements TO off;
ALTER SYSTEM SET auto_explain.sample_rate TO 1;


ALTER SYSTEM SET auto_explain.log_analyze TO on;
ALTER SYSTEM SET auto_explain.log_buffers TO on;
ALTER SYSTEM SET auto_explain.log_wal     TO on;
ALTER SYSTEM SET auto_explain.log_timing  TO on;
ALTER SYSTEM SET auto_explain.log_triggers TO on;
ALTER SYSTEM SET auto_explain.log_verbose  TO on;
ALTER SYSTEM SET auto_explain.log_settings  TO on;
