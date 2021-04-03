show con_name;

select name, con_id from v$pdbs;

-- alter session set container=orclpdb;
alter session set container=PDBORCL;

show con_name;

select name, open_mode, from v$pdbs;

alter pluggable database open;

select * from all_users;

alter user hr identified by hr account unlock;


----------------------------------------

alter pluggable database all open;