
-- SET max_parallel_workers_per_gather = 0; turns off the system using more than 1 cpu 
SET max_parallel_workers_per_gather = 0;

EXPLAIN SELECT * FROM performance_test WHERE location like 'ab%';

/*
  Two basic types of costs

    1. I/O Costs - reading and writing to disk
    2. CPU Costs - processing data


  How cost is calculated

    (Number of relation pages * seq_page_cost) 
      
    + 
      
    (Number of rows * cpu_tuple_cost) 
      
    + 
      
    (Number of rows * cpu_operator_cost)

  What are relation pages

    Every table and index is stored as an array of pages of fixed size (default 8kb)

    So, for a table the relation pages are 8KB chunks of data
*/

-- How to see table size? = size of table
SELECT pg_relation_size('performance_test'), pg_size_pretty(pg_relation_size('performance_test'));


-- where to find the relation pages ? = number of relation pages
SELECT relpages FROM pg_class WHERE relname='performance_test';

-- 8Kb = 8192
SELECT relpages, pg_relation_size('performance_test') / 8192
FROM pg_class
WHERE relname='performance_test';

-- How to find I/O cost used by plan ? = I/O cost per relationship page read
SHOW seq_page_cost;

-- total I/O cost
SELECT relpages * current_setting('seq_page_cost')::numeric
FROM pg_class
WHERE relname='performance_test';

-- CPU cost depends on rows processed - number of rows
SELECT reltuples
FROM pg_class
WHERE relname='performance_test';

--CPU cost per row processed
SHOW cpu_tuple_cost;
SHOW cpu_operator_cost;

-- Total CPU Costs
SELECT reltuples * current_setting('cpu_tuple_cost')::numeric +
reltuples * current_setting('cpu_operator_cost')::numeric
FROM pg_class
WHERE relname='performance_test';

-- Total Costs for a table scan
SELECT relpages * current_setting('seq_page_cost')::numeric +
reltuples * current_setting('cpu_tuple_cost')::numeric +
reltuples * current_setting('cpu_operator_cost')::numeric
FROM pg_class
WHERE relname='performance_test';

-- cost of setting up each thread
SHOW parallel_setup_cost;

-- cost of communicating each row
SHOW parallel_tuple_cost;

SET max_parallel_workers_per_gather = 4;
EXPLAIN (ANALYZE, VERBOSE) SELECT * FROM performance_test
WHERE location like 'ab%';
