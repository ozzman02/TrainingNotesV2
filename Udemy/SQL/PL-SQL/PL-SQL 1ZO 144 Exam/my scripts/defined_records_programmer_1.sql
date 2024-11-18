declare
    
    type t_emp is record
    (
        v_emp_id        employees.employee_id%type,
        v_first_name    employees.first_name%type,
        v_last_name     employees.last_name%type
    );
    
    v_emp   t_emp;
    
begin

    select employee_id, first_name, last_name
    
    /*
        If you want to use only the variable you need to use all fields
    */
    into v_emp 
    
    /*
        You can use this method as well    
    */
    -- into v_emp.v_emp_id, v_emp.v_first_name, v_emp.v_last_name 
    
    from employees
    where employee_id = 200;
    
    dbms_output.put_line('id: ' || v_emp.v_emp_id);
    dbms_output.put_line('name: ' || v_emp.v_first_name || ' ' || v_emp.v_last_name);
    
end;