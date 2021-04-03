select first_name, last_name
from employees
where employee_id = 100;

declare
    
    v_fname employees.first_name%type;
    v_lname employees.last_name%type;
    
begin

    select first_name, last_name
    into v_fname, v_lname
    from employees
    where employee_id = 100;
    
    dbms_output.put_line('first name: ' || v_fname);
    dbms_output.put_line('last name: ' || v_lname);
end;