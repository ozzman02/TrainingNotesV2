/*
    Controls the following:

    CREATE - put objects like tables into the schema
    USAGE - look in the schema and see what is present
    
*/

//suzy can create a table even though no explicit permissions
 psql -U bobby
create table can_i (id int);


//in pgAdmin issue this command
REVOKE ALL ON SCHEMA public FROM public;
DROP TABLE can_i;


//on psql for bobby try again
create table can_i (id int);


//in pgAdmin window
GRANT CREATE ON SCHEMA public TO accounting;
GRANT USAGE ON SCHEMA public TO accounting;
GRANT USAGE ON SCHEMA public TO hr;


GRANT USAGE ON SCHEMA public TO sales;
