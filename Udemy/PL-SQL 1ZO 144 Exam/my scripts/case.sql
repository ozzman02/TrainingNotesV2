select 
    employee_id, 
    first_name, 
    salary, 
    department_id,
    case department_id 
        when 90 then salary*1.1
        when 60 then salary*1.2
        when 100 then salary*1.3
        else salary
    end new_sal
from
    employees;
----------------------------------------------------------------------------------    
select 
    employee_id, 
    first_name, 
    salary, 
    department_id,
    case  
        when department_id = 90 then salary * 1.1
        when department_id = 60 then salary * 1.2
        when department_id = 100 then salary * 1.3
        else salary
    end new_sal
from
    employees;
----------------------------------------------------------------------------------    
declare

    v_sal   number;
    v_desc  varchar2(100);
    
begin

    select salary into v_sal from employees where employee_id = &emp_id;
    
    /*  Case expression returns a value */
    v_desc := 
        case 
            when v_sal is null then 'no salary for the employee'
            when v_sal between 1000 and 3000 then 'salary is low'
            when v_sal between 3001 and 5000 then 'salary is medium'
            when v_sal between 5001 and 10000 then 'salary is good'
            else 'salary is high'
        end;
        
    dbms_output.put_line(v_desc);
end;
---------------------------------------------------------------------------------- 
declare

    v_sal   number;
    v_desc  varchar2(100);
    
begin

    select salary into v_sal from employees where employee_id = &emp_id;
    
    /*  Case statement. You can do actions based on conditions */
    case 
        when v_sal is null then 
            dbms_output.put_line('no salary for the employee');
        when v_sal between 1000 and 3000 then 
            dbms_output.put_line('salary is low');
        when v_sal between 3001 and 5000 then 
            dbms_output.put_line('salary is medium');
        when v_sal between 5001 and 10000 then 
            dbms_output.put_line('salary is good');
        else 
            dbms_output.put_line('salary is high');
    end case;
        
    dbms_output.put_line(v_desc);
    
end;
