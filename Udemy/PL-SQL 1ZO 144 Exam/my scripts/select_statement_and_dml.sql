set Serveroutput On;

-- having is reserved word, you can not name ur variables like this
declare
having number:=50;
begin
DBMS_OUTPUT.PUT_LINE(having);
end;
-------------------------------
--you can name the variable like function like trim , but this is not good
declare
trim number:=50;
begin
DBMS_OUTPUT.PUT_LINE(trim);
DBMS_OUTPUT.PUT_LINE(standard.trim(' khaled '));
end;
---------------------------------------

--write a block that retrive the salary for employee 100 in  variable v_sal
--raise the salary 100 in variable v_new_sal
--update the employee 100 with this new salary
--insert new department called  test with ID=1

declare

    v_first_name    employees.first_name%type;
    v_last_name     employees.last_name%type;
    v_full_name     varchar2(200);
    v_sal           employees.salary%type;
    v_new_sal       employees.salary%type;

begin
    
    select first_name, last_name, salary into v_first_name, v_last_name, v_sal
    from employees where employee_id = 100;
    
    v_full_name := v_first_name || ' ' || v_last_name;
    v_new_sal := v_sal + 100;
    
    update employees set salary = v_new_sal where employee_id = 100;
    
    dbms_output.put_line('Employee name: ' || v_full_name || ' Old salary: ' || v_sal);
    dbms_output.put_line('Employee name: ' || v_full_name || ' New salary: ' || v_new_sal);
    
    insert into departments (department_id, department_name, manager_id, location_id)
    values (1, 'test', null, null);
    
    commit;
    
end;

select * from employees where employee_id = 100; 
select * from departments where department_id = 1;

---------------------------------------

/*
    PL/SQL does not return an error if a update/delete statement 
    does not affect rows in the
    underlying table.
*/

begin
    delete from employees where employee_id=-989;
end;