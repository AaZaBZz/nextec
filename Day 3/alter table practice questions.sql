ALTER TABLE employees
MODIFY last_name varchar(50));
DESCRIBE employees;

CREATE TABLE employees22 AS
	SELECT employee_id id, first_name, last_name, salary,
	department_id dept_id
	FROM employees;
    
RENAME employee2 TO emp;

DROP TABLE emp;

ALTER TABLE employees
DROP COLUMN FIRST_NAME;

rollback;

ALTER TABLE employees
SET UNUSED (department_id);

ALTER TABLE employees
DROP UNUSED COLUMNS;

describe employees;