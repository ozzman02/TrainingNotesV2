/*
    Controls the following:
    
    SUPERUSER: can do anything
    CREATEDB: make databases
    CREATEROLE: make more roles
    LOGIN: can login into database
    REPLICATION: can be used for replication

    Every permission can be reversed with a NO in front

    SUPERUSER => NOSUPERUSER
*/

CREATE ROLE accounting NOCREATEDB NOLOGIN NOSUPERUSER;
CREATE ROLE hr NOCREATEDB NOLOGIN NOSUPERUSER;

//can't login with either
psql -U accounting
psql -U hr


CREATE ROLE suzy NOCREATEDB LOGIN NOSUPERUSER PASSWORD 'pass123';
CREATE USER bobby NOCREATEDB LOGIN NOSUPERUSER PASSWORD 'pass123';

//can login in
psql -U suzy
psql -U bobby

REVOKE ALL ON DATABASE northwind FROM public;

GRANT  accounting TO suzy;
GRANT  hr TO bobby;

CREATE ROLE sales NOCREATEDB NOLOGIN NOSUPERUSER;
CREATE ROLE jill NOCREATEDB LOGIN NOSUPERUSER PASSWORD 'pass123';
GRANT  sales TO jill;
