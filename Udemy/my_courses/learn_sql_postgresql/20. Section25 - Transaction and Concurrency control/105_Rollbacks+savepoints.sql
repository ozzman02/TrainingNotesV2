/*  Rollback aborts all changes in the current transaction. 
    Savepoint allows you to do a partial rollback.
*/

START TRANSACTION;

UPDATE orders
SET orderdate = orderdate + INTERVAL '1 YEAR';

ROLLBACK;


START TRANSACTION;

INSERT INTO employees (employeeid,lastname,firstname,title,birthdate,hiredate)
VALUES (501,'Sue','Jones','Operations Assistant','1999-05-23','2017-06-13');

SAVEPOINT inserted_employee;

UPDATE employees
SET birthdate='2025-07-11';

ROLLBACK TO inserted_employee;

UPDATE employees
SET birthdate='1998-05-23'
WHERE employeeid=501;

COMMIT;

SELECT *
FROM employees
WHERE employeeid=501;
