SET SERVEROUT ON;
DECLARE
    V_AGE NUMBER := &AGE;
BEGIN
    DBMS.OUTPUT.PUT_LINE('AGE IS'||V_AGE);
END;

declare 
vname varchar2(20);
vsal number;
begin
select last_name, salary*12
into vname,vsal
from employees
where employee_id = &empid;
dbms_output.put_line('Name is:'||vname);
dbms_output.put_line('Annual Salary is:'||vsal);
exception 
when no_data_found then
dbms_output.put_line('No emps in this dept');
when too_many_rows then
dbms_output.put_line ('More than One emps');
end;
/

<<a>>
declare 
x number :=5;
begin 
<<b>>
declare 
x number :=6;
begin 
dbms_output.put_line('inner x'||x);
dbms_output.put_line('inner x'||a.x);
end;
dbms_output.put_line ('x'||x);
end;
/

declare 
x number :=10;
begin 
loop
dbms_output.put_line(x);
x:=x-1;
exit when x<=1;
end loop;
end;
/

declare 
x number :=10;
begin 
while x<=1
loop
dbms_output.put_line(x);
x:=x-1;
exit when x<=1;
end loop;
end;
/

begin 
for i in 1..10
loop 
dbms_output.put_line (i);
end loop;
end;
/

declare 
vname varchar2(20);
vsal number;
begin 
for i in reverse 100..109
loop 
select last_name, salary
into vname, vsal
from employees
where employee_id=i;
dbms_output.put_line (vname||'   '||vsal);
end loop;
end loop;
/

declare 
type emp_record_type is record
(last_name varchar2(25),
job_id varchar2(10),
salary number(8,2));

emp_record emp_record_type;
begin 
select last_name,job_id,salary
into emp_record 
from employees
where employee_id=&empid;
dbms_output.put_line (emp_record.last_name||'  '|| emp_record.job_id||'  '||emp_record.salary);
end;
/

declare 
emp_record employees%rowtype;
begin 
select *
into emp_record 
from employees
where employee_id=&empid;
dbms_output.put_line (emp_record.last_name||'  '|| emp_record.job_id||'  '||emp_record.salary);
end;
/

declare 
type num_tab_type is table of number 
index by binary_integer;
num_tab num_tab_type;
begin 
for i in 1..10
loop
num_tab(i):= i*10;
end loop;
for i in num_tab.first..num_tab.last
loop
dbms_output.put_line(num_tab(i));
end loop;
end;
/

declare 
type num_tab_type is table of employees.last_name%type
index by binary_integer;
num_tab num_tab_type;
begin 
for i in 100..109
loop
select last_name
into num_tab(i)
from employees
where employee_id=i;
end loop;
for i in num_tab.first..num_tab.last
loop
dbms_output.put_line(num_tab(i));
end loop;
end;
/


declare 
    type emp_record_type is record
   ( lname employees.last_name%type,
    sal employees.salary%type);
    
    type num_tab_type is table of emp_record_type
    index by binary_integer;
    num_tab num_tab_type;
    begin
    for i in 100..120
    loop
       select last_name , salary
       into num_tab(i) from employees where  employee_id=i;
    end loop;
    
    for i in num_tab.first..num_tab.last
    loop
    dbms_output.put_line(num_tab(i).lname);
     dbms_output.put_line(num_tab(i).sal);
    end loop;
    end;
   /
