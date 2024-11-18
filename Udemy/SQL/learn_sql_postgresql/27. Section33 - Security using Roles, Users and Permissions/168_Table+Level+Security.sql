/*
    Controls the following:

    SELECT - read rows in table
    INSERT - write data to table
    UPDATE - change data in table
    DELETE - delete data
    TRUNCATE - remove all data at once
    REFERENCE - allows a user to create foreign key constraints
    TRIGGER - create triggers on table
*/

GRANT SELECT ON ALL TABLES IN SCHEMA public TO accounting;

GRANT INSERT ON TABLE employees TO hr;
GRANT SELECT ON TABLE employees TO hr;
GRANT UPDATE ON TABLE employees TO hr;


GRANT SELECT ON TABLE customers TO sales;

GRANT SELECT ON TABLE orders TO sales;
GRANT SELECT ON TABLE order_details TO sales;

GRANT INSERT ON TABLE orders TO sales;
GRANT INSERT ON TABLE order_details TO sales;
