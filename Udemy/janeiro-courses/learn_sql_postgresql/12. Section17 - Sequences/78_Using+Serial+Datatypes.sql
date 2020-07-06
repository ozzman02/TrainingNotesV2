/*
    Using a serial field is equivalent to the following three steps

        create sequence tableName_colName_seq;

        create table tableName (
            colname integer not null default nextval('tableName_colName_seq')
        );

        alter sequence tableName_colName_seq owned by tableName.colName;

*/

DROP TABLE IF EXISTS exes;

CREATE TABLE exes (
exid SERIAL,
name varchar(255)
);
INSERT INTO exes (name) VALUES ('Carrie') RETURNING exid

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
petid SERIAL,
name varchar(255)
);

INSERT INTO pets (name) VALUES ('Fluffy') RETURNING petid;
