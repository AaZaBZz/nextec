-- Implicit cursors
BEGIN 
    delete from departments where department_id = 240;
    dbms_output.put_line(SQL%ROWCOUNT ||' rows deleted');
    end;
/

rollback;

-- Cursors with basic loop
DECLARE 
    Cursor c1
    is select last_name,job_id,salary
    from employees 
    where salary between 5000 and 15000;
    erec c1%ROWTYPE;
BEGIN
    open c1;
    loop
        fetch c1 into erec;
        exit when c1%notfound;
        dbms_output.put_line (erec.last_name||'  '|| erec.job_id||'  '||erec.salary);
END LOOP;
close c1;
END;
/

-- Cursors with basic loop
DECLARE 
    Cursor c1
    is select last_name,job_id,salary
    from employees 
    where salary between 5000 and 15000;
BEGIN
    for erec in c1    
    loop
        dbms_output.put_line (erec.last_name||'  '|| erec.job_id||'  '||erec.salary);
END LOOP;
--close c1;
END;
/

create table emp as select * from employees;
--Explicit Row Lock using cursors
DECLARE 
    CURSOR c1
    IS SELECT last_name, job_id, salary
    FROM emp
    WHERE salary BETWEEN 5000 AND 15000
    FOR UPDATE WAIT 4; --can also provide nowait here. if no wait is provided it won't wait at all, and it there's a deadlock it gives an error
BEGIN 
    FOR erec IN c1
    LOOP
        dbms_output.put_line (erec.last_name||'  '||erec.job_id||'  '||erec.salary);
        
        delete from emp where last_name='Higgins';
END LOOP;
END;
--close c1
/

--
rollback;
--

-- ways to get back dropped table
drop table emp;
show recyclebin
flashback table emp to before drop;
--

-- empty recycle bin
purge recyclebin;
--

-- Deleting table permanently
drop table emp purge;
-- 

-- Only tables,rows and columns can be flashbacked, triggers, cursors cannot be. A table can only be retained in 15 minutes 
-- if mistake is done by a user and 24 hours if done by dba by default
conn / as sysdba
sho parameter retention;
--

-- Flashbacking a row after commit
delete from emp where salary>12000;
commit;
select count(*) from emp;
alter table emp enable row movement;
flashback table emp to timestamp to_timestamp ('2020-01-03 11:38:40','yyyy-mm-dd hh24:mi:ss');
-- All this is not feasable in real time servers because once data is deleted it is not practical to get it back for eg: if you made a mistake 
-- and other 9 people updated the data and moving back to the time of mistake makes their rightness wrong also

