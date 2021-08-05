declare

    v_counter   number := 0;

begin

    loop
        v_counter := v_counter + 1;
        dbms_output.put_line('welcome ' || v_counter);
        exit when v_counter = 3;
    end loop;
    
end;
----------------------------------------------------------------------------
declare

    v_counter   number := 0;

begin

    loop
        
        v_counter := v_counter + 1;
        dbms_output.put_line('welcome ' || v_counter);
        
        if v_counter = 3 then
            exit;
        end if;
        
    end loop;
    
end;
----------------------------------------------------------------------------
declare

    v_empno         number := 100;
    v_first_name    employees.first_name%type;
    
begin

    loop
        exit when v_empno > 102;
        select first_name into v_first_name from employees where employee_id = v_empno;
        dbms_output.put_line(v_empno || ' ' || v_first_name);
        v_empno := v_empno + 1;
    end loop;
    
end;