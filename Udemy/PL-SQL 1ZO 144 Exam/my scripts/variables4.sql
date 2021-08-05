-- this is a single line comment
/* 
    this is a multiline comment
*/

set serveroutput on;

declare
    
    v_first_name    employees.first_name%type;
    v_last_name     employees.last_name%type;
    v_sal           number;
    "hire date"     date; -- not recommended by oracle
    
begin

    select 
        first_name, last_name, salary, hire_date
    into   
        v_first_name, v_last_name, v_sal, "hire date"
    from    
        employees
    where   
        employee_id = 100;
        
    dbms_output.put_line('the employee first name is ' || v_first_name);
    dbms_output.put_line('the employee last name is ' || v_last_name);
    dbms_output.put_line('the employee salary is ' || v_sal);
    dbms_output.put_line('the employee hire date is ' || "hire date");
    dbms_output.put_line('the employee first name length is ' || length(v_first_name));
    dbms_output.put_line('the first 3 letters of first name is ' || substr(v_first_name, 1, 3));
    
end;

--------------------------------------------------------------------------------------------------------------

declare
    
    v_date  date    := sysdate;
    v_sal   number  := 5000;
    
begin
    
    dbms_output.put_line('sysdate: ' || v_date);
    dbms_output.put_line('sysdate plus 8 days: ' || (v_date + 8));
    dbms_output.put_line('sysdate minus 3 days: ' || (v_date - 3));
    dbms_output.put_line('sysdate with format dd-mm-yyyy hh:mi:ss am is: ' || (to_char(v_date, 'dd-mm-yyyy hh:mi:ss am')));
    dbms_output.put_line('sysdate plus 2 months: ' || (add_months(v_date, 2)));
    dbms_output.put_line('salary with format $999,999: ' || (to_char(v_sal, '$999,999')));
    
end;