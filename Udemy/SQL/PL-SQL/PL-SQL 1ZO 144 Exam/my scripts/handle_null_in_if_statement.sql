set serveroutput on

declare
    
    x   number := 5;
    y   number; -- this is null
    
begin

    if x <> y then
        dbms_output.put_line('welcome');
    else
        dbms_output.put_line('Operator with null value always = null');
    end if;
    
end;
------------------------------------------------------------------------------------------------------
-- solution

declare

    x   number := 5;
    y   number;

begin

    /*
        The Oracle/PLSQL NVL function lets you substitute a value when a null value is encountered.
    */
    if nvl(x, 0) <> nvl(y, 0) then
        dbms_output.put_line('welcome');
    else
        dbms_output.put_line('Operator with null value always =null');
    end if;

end;
------------------------------------------------------------------------------------------------------
declare

    x   number;
    y   number;

begin

    if x = y then
        dbms_output.put_line('welcome');
    else
         dbms_output.put_line('Operator with null value always =null');
    end if;

end;
------------------------------------------------------------------------------------------------------
-- solution

declare

    x   number;
    y   number;

begin

    if x is null and y is null then
        dbms_output.put_line('welcome');
    else
        dbms_output.put_line('Operator with null value always =null');
    end if;

end;


