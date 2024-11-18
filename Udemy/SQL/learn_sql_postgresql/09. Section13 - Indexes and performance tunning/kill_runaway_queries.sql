DROP TABLE IF EXISTS performance_test;
CREATE TABLE performance_test (
  id serial,
  location text
);

INSERT INTO performance_test (location)
SELECT 'Katmandu, Nepal' FROM generate_series(1,500000000);

//See what is running
SELECT * FROM pg_stat_activity WHERE state = 'active';

// polite way to stop
SELECT pg_cancel_backend(PID);

//stop at all costs - can lead to full database restart
SELECT pg_terminate_backend(PID);
