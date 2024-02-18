
set autoprint on
variable    v_sal   number;
begin
    select salary into :v_sal from employees where employee_id = 100;
end;
-------------------------------------------------------------------------------------
set autoprint on
var v_name  varchar2(100);
begin
    select first_name into :v_name from employees where employee_id = 100;
end;
