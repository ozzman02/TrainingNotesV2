ALTER TABLE performance_test
ADD COLUMN name text;

UPDATE performance_test
SET name = md5(location);

-- takes above 900ms after data cached
EXPLAIN ANALYZE SELECT *
FROM  performance_test
WHERE location LIKE 'df%' AND name LIKE 'cf%';

CREATE INDEX idx_peformance_test_location_name
ON performance_test(location,name);

-- takes 55 ms
EXPLAIN ANALYZE SELECT *
FROM  performance_test
WHERE location LIKE 'df%' AND name LIKE 'cf%';

-- this can't use index
EXPLAIN ANALYZE SELECT *
FROM  performance_test
WHERE  name LIKE 'cf%';

-- this can
EXPLAIN ANALYZE SELECT *
FROM  performance_test
WHERE location LIKE 'df%';
