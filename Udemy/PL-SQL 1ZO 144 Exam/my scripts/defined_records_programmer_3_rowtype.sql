select * from departments where department_id = 10;

/* where clause will not be met, an empty table with the same structure will be created */
create table copy_departments as select * from departments where 1 = 2;

select * from copy_departments;

---------------------------------------------------------------------------------

declare
    
    type t_dept is record (
        v_dept_id       departments.department_id%type,
        v_dept_name     departments.department_name%type,
        v_dept_manager  departments.manager_id%type,
        v_dept_loc      departments.location_id%type
    );
    
    v_dept  t_dept;
    
begin

    select department_id, department_name, manager_id, location_id
    into v_dept
    from departments
    where department_id = 10;
    
    insert into copy_departments values v_dept;
    
end;

select * from copy_departments;
---------------------------------------------------------------------------------

declare
    
    v_dept  departments%rowtype;
    
begin
    
    select department_id, department_name, manager_id, location_id
    into v_dept
    from departments
    where department_id = 20;
    
    insert into copy_departments values v_dept;
    
end;

select * from copy_departments;