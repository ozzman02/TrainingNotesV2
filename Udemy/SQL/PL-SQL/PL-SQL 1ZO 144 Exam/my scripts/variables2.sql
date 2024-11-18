set serveroutput on;

declare

    v_no                number  :=  300;
    v_date              date;
    v_timestamp         timestamp;
    v_project_period    interval year to month;

begin

    v_no := 125.323;
    v_date := sysdate;
    v_timestamp := current_timestamp;
    v_project_period := '03-04';
    
    dbms_output.put_line('v_no: ' || v_no);
    dbms_output.put_line('v_date: ' || v_date);
    dbms_output.put_line('v_timestamp: ' || v_timestamp);
    dbms_output.put_line('v_project_period: ' || v_project_period);
    
    dbms_output.put_line('sysdate dd-mm-yyyy hh:mi:ss format: ' || to_char(sysdate, 'dd-mm-yyyy hh:mi:ss'));
      
end;