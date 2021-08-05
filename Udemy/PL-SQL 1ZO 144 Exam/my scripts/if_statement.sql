set serveroutput on;

declare

    v_no    NUMBER := &v;
    
begin
    
    if v_no >= 10 then
        dbms_output.put_line('the number you entered is >= 10');
    end if;
    
end;
------------------------------------------------------------------------------------------------------------------
declare

    v_no    NUMBER := &v;

begin

    if v_no >= 10 then
        dbms_output.put_line('the number you entered is >= 10');
    else
        dbms_output.put_line('the number you entered is < 10');
    end if;
    
end;
------------------------------------------------------------------------------------------------------------------
declare

    v_grade number := &v;

begin

    if v_grade between 90 and 100 then
        dbms_output.put_line('the grade is A');
    elsif v_grade between 80 and 89 then
        dbms_output.put_line('the grade is B');
    elsif v_grade between 70 and 79 then
        dbms_output.put_line('the grade is C');
    elsif v_grade between 60 and 69 then
        dbms_output.put_line('the grade is D');
    else
        dbms_output.put_line('the grade is F');    
    end if;

end;
------------------------------------------------------------------------------------------------------------------
DECLARE
    
    v_grade NUMBER := &v;

BEGIN
 
    IF v_grade BETWEEN 0 AND 100 THEN
        IF v_grade between 90 and 100 THEN
            dbms_output.put_line('the grade is A');
        ELSIF v_grade between 80 and 89 THEN
             dbms_output.put_line('the grade is B');
        ELSIF v_grade between 70 and 79 THEN
            dbms_output.put_line('the grade is C');
        ELSIF v_grade between 60 and 69 THEN
            dbms_output.put_line('the grade is D');
        ELSE
            dbms_output.put_line('the grade is F');
        END IF;
    ELSE
        dbms_output.put_line('the grade should be number between 0 and 100');
    END IF;

END;
------------------------------------------------------------------------------------------------------------------
declare

    v_salary    employees.salary%type;

begin

    select salary into v_salary from employees where employee_id = &emp_id;
    
    if v_salary >= 15000 then
        dbms_output.put_line('yes, the salary is >= 15000');
    else
        dbms_output.put_line('no, the salary is < 15000');
    end if; 
    
end;

select * from employees;