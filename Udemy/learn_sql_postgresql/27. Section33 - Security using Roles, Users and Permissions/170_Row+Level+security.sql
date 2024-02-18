/*
    Must be turned on at table level

        ALTER TABLE name ENABLE ROW LEVEL SECURITY

    Controlled by policy

        What happens if more than one policy

            - Default is more data is added
            - Conditions are combined with OR
            - Called permissive

            You can make Restrictive

                - This will combine policies with AND

*/


GRANT SELECT
ON TABLE orders
TO accounting;

//login as suzy and test - she can see all rows
SELECT COUNT(*) FROM orders;

ALTER TABLE orders
ENABLE ROW LEVEL SECURITY;

//as suzy - you see zero records
SELECT COUNT(*) FROM orders;

//in pgAdmin create a policy
CREATE POLICY accounting_orders ON orders
FOR SELECT
TO accounting
USING (orderdate >= '1998-01-01');

//now try with suzy
SELECT MIN(orderdate) FROM orders;

// adding policy for older data
CREATE POLICY accounting_orders_older ON orders
FOR SELECT
TO accounting
USING (orderdate <= '1996-12-31');

//now try with suzy
SELECT MIN(orderdate) FROM orders;
//still can not see data from 1997
SELECT * FROM orders where orderdate BETWEEN '1997-01-01' AND '1997-12-31';

//drop policy
DROP POLICY accounting_orders_older ON orders;
//create a restrictive policy
CREATE POLICY accounting_orders_customers ON orders
AS RESTRICTIVE
FOR SELECT TO accounting
USING (customerid LIKE 'A%');

//now try with suzy
SELECT * FROM orders;

// your turn
CREATE POLICY sales_orders ON orders
FOR UPDATE
TO sales
USING (shippeddate IS NULL);
