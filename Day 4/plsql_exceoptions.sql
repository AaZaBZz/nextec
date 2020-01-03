SET SERVEROUTPUT ON;
--Name System defined Exception
DECLARE
    vname employees.last_name%TYPE;
    vsal employees.salary%TYPE;
BEGIN
    SELECT last_name, salary
    INTO vname, vsal
    FROM employees
    WHERE employee_id=&empid;
EXCEPTION
    WHEN NO_DATA_FOUND THEN 
        DBMS_OUTPUT.PUT_LINE('No Emps');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More Than One Emp');
END;
/

--Name System defined Exception -MULTIPLE INPUTS
DECLARE
    vname employees.last_name%TYPE;
    vsal employees.salary%TYPE;
BEGIN
    SELECT last_name, salary
    INTO vname, vsal
    FROM employees
    WHERE employee_id IN (&empid);
EXCEPTION
    WHEN NO_DATA_FOUND THEN 
        DBMS_OUTPUT.PUT_LINE('No Emps');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More Than One Emp');
END;
/

--For raising all exceptions at once
DECLARE
    vname employees.last_name%TYPE;
    vsal employees.salary%TYPE;
BEGIN
    SELECT last_name, salary
    INTO vname, vsal
    FROM employees
    WHERE employee_id IN (&empid);
    DBMS_OUTPUT.PUT_LINE (vname||'  '||vsal);
EXCEPTION
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('Error...');
END;
/

-- Handling unnamed system defined exceptions
DECLARE
    emp_exist EXCEPTION;
    PRAGMA EXCEPTION_INIT(emp_exist,-2292);
BEGIN 
    delete from departments
    where department_id = &deptid;
EXCEPTION
    when emp_exist then
        dbms_output.put_line ('Cannot rempve dept since emps exist');
END;
/

--Age must be between 21 to 60
-- else raise exception and handled
DECLARE    
    v_age number := &age;
    invalid_age EXCEPTION;
BEGIN
    if v_age not between 21 and 60 then 
        Raise invalid_age;
    else 
        dbms_output.put_line('Congrats u are eligible');
    end if;
EXCEPTION
    when invalid_age then
        dbms_output.put_line ('Age must be 21-60');
END;
/

--Age must be between 21 to 60
-- else raise exception (Not handled only raised with error report
DECLARE    
    v_age number := &age;
BEGIN
    if v_age not between 21 and 60 then 
        Raise_Application_Error(-20111, 'Age must be 21-60');
    else 
        dbms_output.put_line('Congrats u are eligible');
    end if;
END;
/



