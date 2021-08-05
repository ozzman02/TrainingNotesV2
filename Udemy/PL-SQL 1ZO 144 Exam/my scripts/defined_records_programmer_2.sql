declare
    
    type t_emp is record
    (
        v_emp_id        employees.employee_id%type,
        v_first_name    employees.first_name%type,
        v_last_name     employees.last_name%type
    );
    
    v_emp   t_emp;
    
begin

    for i in 100..103
    loop
        select employee_id, first_name, last_name
        into v_emp
        from employees
        where employee_id = i;
        dbms_output.put_line(v_emp.v_emp_id || ' ' || v_emp.v_first_name || ' ' || v_emp.v_last_name);
    end loop;
    
end;