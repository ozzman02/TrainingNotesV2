set SERVEROUTPUT ON

begin
    dbms_output.put_line('hello world');
end;
-------------------------------------------------------------------------------
begin
    dbms_output.put_line('this is the first line');
    dbms_output.put_line('this is the second line');
end;
-------------------------------------------------------------------------------
declare
begin
    dbms_output.put_line('hello world');
end;
-------------------------------------------------------------------------------
declare
    
    v number;

begin
    v := 5;
    dbms_output.put_line('hello world');
    dbms_output.put_line(v);
end;

show con_name;