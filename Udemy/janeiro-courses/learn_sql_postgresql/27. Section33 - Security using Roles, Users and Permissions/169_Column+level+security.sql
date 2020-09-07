/*
    Controls the following:

    SELECT - read the column
    INSERT - insert data into column
    UPDATE - update data in column
    REFERENCE - permission to refer to a column in foreign keys
*/

// First we try to restrict
GRANT SELECT (employeeid, lastname, firstname, title, titleofcourtesy, hiredate, country, extension, photo, photopath)
ON employees
TO accounting;

//login in as suzy and try
SELECT * FROM employees;

//She sees everthing, must revoke select on all tables
REVOKE SELECT ON ALL TABLES
IN SCHEMA public
FROM accounting;

// then apply permissions
GRANT SELECT (employeeid, lastname, firstname, title, titleofcourtesy, hiredate, country, extension, photo, photopath)
ON employees
TO accounting;


//login in as suzy and try
SELECT * FROM employees;

//must use column names
SELECT firstname,lastname,hiredate FROM employees;

//your turn
GRANT UPDATE (contactname, contacttitle, phone)
ON customers
TO sales;
