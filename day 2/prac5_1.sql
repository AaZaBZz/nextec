SQL> desc employees;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> SELECT ROUND(MAX(SALARY)),ROUND(MIN(SALARY)),ROUND(SUM(SALARY)),ROUND(AVG(SALARY)) FROM EMPLPYEES;
SELECT ROUND(MAX(SALARY)),ROUND(MIN(SALARY)),ROUND(SUM(SALARY)),ROUND(AVG(SALARY)) FROM EMPLPYEES
                                                                                        *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT ROUND(MAX(SALARY)),ROUND(MIN(SALARY)),ROUND(SUM(SALARY)),ROUND(AVG(SALARY)) FROM EMPLOPYEES;
SELECT ROUND(MAX(SALARY)),ROUND(MIN(SALARY)),ROUND(SUM(SALARY)),ROUND(AVG(SALARY)) FROM EMPLOPYEES
                                                                                        *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT ROUND(MAX(SALARY)),ROUND(MIN(SALARY)),ROUND(SUM(SALARY)),ROUND(AVG(SALARY)) FROM EMPLOYEES;

ROUND(MAX(SALARY)) ROUND(MIN(SALARY)) ROUND(SUM(SALARY)) ROUND(AVG(SALARY))     
------------------ ------------------ ------------------ ------------------     
             24000               2100             691416               6462     

SQL> SELECT JOB_ID FROM EMPLOYEES;

JOB_ID                                                                          
----------                                                                      
AC_ACCOUNT                                                                      
AC_MGR                                                                          
AD_ASST                                                                         
AD_PRES                                                                         
AD_VP                                                                           
AD_VP                                                                           
FI_ACCOUNT                                                                      
FI_ACCOUNT                                                                      
FI_ACCOUNT                                                                      
FI_ACCOUNT                                                                      
FI_ACCOUNT                                                                      

JOB_ID                                                                          
----------                                                                      
FI_MGR                                                                          
HR_REP                                                                          
IT_PROG                                                                         
IT_PROG                                                                         
IT_PROG                                                                         
IT_PROG                                                                         
IT_PROG                                                                         
MK_MAN                                                                          
MK_REP                                                                          
PR_REP                                                                          
PU_CLERK                                                                        

JOB_ID                                                                          
----------                                                                      
PU_CLERK                                                                        
PU_CLERK                                                                        
PU_CLERK                                                                        
PU_CLERK                                                                        
PU_MAN                                                                          
SA_MAN                                                                          
SA_MAN                                                                          
SA_MAN                                                                          
SA_MAN                                                                          
SA_MAN                                                                          
SA_REP                                                                          

JOB_ID                                                                          
----------                                                                      
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          

JOB_ID                                                                          
----------                                                                      
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          

JOB_ID                                                                          
----------                                                                      
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SA_REP                                                                          
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        

JOB_ID                                                                          
----------                                                                      
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        

JOB_ID                                                                          
----------                                                                      
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        

JOB_ID                                                                          
----------                                                                      
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        

JOB_ID                                                                          
----------                                                                      
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_CLERK                                                                        
ST_MAN                                                                          
ST_MAN                                                                          
ST_MAN                                                                          
ST_MAN                                                                          
ST_MAN                                                                          

107 rows selected.

SQL> SELECT DISTINCT JOB_ID FROM EMPLOYEES;

JOB_ID                                                                          
----------                                                                      
AC_ACCOUNT                                                                      
AC_MGR                                                                          
AD_ASST                                                                         
AD_PRES                                                                         
AD_VP                                                                           
FI_ACCOUNT                                                                      
FI_MGR                                                                          
HR_REP                                                                          
IT_PROG                                                                         
MK_MAN                                                                          
MK_REP                                                                          

JOB_ID                                                                          
----------                                                                      
PR_REP                                                                          
PU_CLERK                                                                        
PU_MAN                                                                          
SA_MAN                                                                          
SA_REP                                                                          
SH_CLERK                                                                        
ST_CLERK                                                                        
ST_MAN                                                                          

19 rows selected.

SQL> SELECT ROUND(MAX(SALARY)),ROUND(MIN(SALARY)),ROUND(SUM(SALARY)),ROUND(AVG(SALARY)) FROM EMPLOYEES;

ROUND(MAX(SALARY)) ROUND(MIN(SALARY)) ROUND(SUM(SALARY)) ROUND(AVG(SALARY))     
------------------ ------------------ ------------------ ------------------     
             24000               2100             691416               6462     

SQL> SELECT ROUND(MAX(SALARY)),ROUND(MIN(SALARY)),ROUND(SUM(SALARY)),ROUND(AVG(SALARY)) FROM EMPLOYEES;

ROUND(MAX(SALARY)) ROUND(MIN(SALARY)) ROUND(SUM(SALARY)) ROUND(AVG(SALARY))     
------------------ ------------------ ------------------ ------------------     
             24000               2100             691416               6462     

SQL> SELECT ROUND(MAX(SALARY)),ROUND(MIN(SALARY)),ROUND(SUM(SALARY)),ROUND(AVG(SALARY)) FROM EMPLOYEES GROUP BY JOB_ID;

ROUND(MAX(SALARY)) ROUND(MIN(SALARY)) ROUND(SUM(SALARY)) ROUND(AVG(SALARY))     
------------------ ------------------ ------------------ ------------------     
              9000               4200              28800               5760     
             12008              12008              12008              12008     
              8300               8300               8300               8300     
              8200               5800              36400               7280     
             11000              11000              11000              11000     
              4400               4400               4400               4400     
             17000              17000              34000              17000     
              4200               2500              64300               3215     
              9000               6900              39600               7920     
             12008              12008              12008              12008     
              3100               2500              13900               2780     

ROUND(MAX(SALARY)) ROUND(MIN(SALARY)) ROUND(SUM(SALARY)) ROUND(AVG(SALARY))     
------------------ ------------------ ------------------ ------------------     
             14000              10500              61000              12200     
             13000              13000              13000              13000     
             10000              10000              10000              10000     
             24000              24000              24000              24000     
             11500               6100             250500               8350     
              6000               6000               6000               6000     
              3600               2100              55700               2785     
              6500               6500               6500               6500     

19 rows selected.

SQL> SELECT COUNT(JOB_ID) FROM EMPLOYEES GROUP BY JOB_ID;

COUNT(JOB_ID)                                                                   
-------------                                                                   
            1                                                                   
            1                                                                   
            1                                                                   
            1                                                                   
            2                                                                   
            5                                                                   
            1                                                                   
            1                                                                   
            5                                                                   
            1                                                                   
            1                                                                   

COUNT(JOB_ID)                                                                   
-------------                                                                   
            1                                                                   
            5                                                                   
            1                                                                   
            5                                                                   
           30                                                                   
           20                                                                   
           20                                                                   
            5                                                                   

19 rows selected.

SQL> SELECT JOB_ID, COUNT(JOB_ID) FROM EMPLOYEES GROUP BY JOB_ID;

JOB_ID     COUNT(JOB_ID)                                                        
---------- -------------                                                        
AC_ACCOUNT             1                                                        
AC_MGR                 1                                                        
AD_ASST                1                                                        
AD_PRES                1                                                        
AD_VP                  2                                                        
FI_ACCOUNT             5                                                        
FI_MGR                 1                                                        
HR_REP                 1                                                        
IT_PROG                5                                                        
MK_MAN                 1                                                        
MK_REP                 1                                                        

JOB_ID     COUNT(JOB_ID)                                                        
---------- -------------                                                        
PR_REP                 1                                                        
PU_CLERK               5                                                        
PU_MAN                 1                                                        
SA_MAN                 5                                                        
SA_REP                30                                                        
SH_CLERK              20                                                        
ST_CLERK              20                                                        
ST_MAN                 5                                                        

19 rows selected.

SQL> SELECT COUNT(MANAGER_ID) "Managers" FROM EMPLOYEES;

  Managers                                                                      
----------                                                                      
       106                                                                      

SQL> SELECT MAX(SALARY) - MIN(SALARY);
SELECT MAX(SALARY) - MIN(SALARY)
                               *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT (MAX(SALARY) - MIN(SALARY))"DIFFERENCE" FROM EMPLOYEES;

DIFFERENCE                                                                      
----------                                                                      
     21900                                                                      

SQL> SELECT MANAGER_ID,MIN(SALARY) WHERE MANAGER_ID IS NOT NULL AND SALARY <=6000 DESC SALARY;
SELECT MANAGER_ID,MIN(SALARY) WHERE MANAGER_ID IS NOT NULL AND SALARY <=6000 DESC SALARY
                              *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT MANAGER_ID,MIN(SALARY) FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL AND SALARY <=6000 DESC SALARY;
SELECT MANAGER_ID,MIN(SALARY) FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL AND SALARY <=6000 DESC SALARY
                                                                                            *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT MANAGER_ID,MIN(SALARY) FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL GROUP BY MANAGER ID HAVING SALARY>=6000; ORDER BY 2;
SELECT MANAGER_ID,MIN(SALARY) FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL GROUP BY MANAGER ID HAVING SALARY>=6000; ORDER BY 2
                                                                                           *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT MANAGER_ID,MIN(SALARY) FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL GROUP BY MANAGER ID HAVING MIN(SALARY)>6000 ORDER BY 2;
SELECT MANAGER_ID,MIN(SALARY) FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL GROUP BY MANAGER ID HAVING MIN(SALARY)>6000 ORDER BY 2
                                                                                           *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT MANAGER_ID,MIN(SALARY) FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL GROUP BY MANAGER_ID HAVING MIN(SALARY)>6000 ORDER BY 2;

MANAGER_ID MIN(SALARY)                                                          
---------- -----------                                                          
       148        6100                                                          
       147        6200                                                          
       149        6200                                                          
       108        6900                                                          
       146        7000                                                          
       145        7000                                                          
       205        8300                                                          
       102        9000                                                          

8 rows selected.

SQL> SELECT COUNT(*) AS "TOTAL", (SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2007,1,0))"2007",(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2008,1,0))"2008",+(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2009,1,0))"2009",(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2010,1,0))"2010;
ERROR:
ORA-01740: missing double quote in identifier 


SQL> SELECT COUNT(*) AS "TOTAL", (SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2007,1,0))"2007",(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2008,1,0))"2008",+(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2009,1,0))"2009",(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2010,1,0))"2010";
SELECT COUNT(*) AS "TOTAL", (SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2007,1,0))"2007",(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2008,1,0))"2008",+(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2009,1,0))"2009",(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2010,1,0))"2010"
                                                                             *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> SELECT COUNT(*) AS "TOTAL", (SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2007,1,0))"2007",(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2008,1,0))"2008",+(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2009,1,0))"2009",(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2010,1,0))"2010";
SELECT COUNT(*) AS "TOTAL", (SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2007,1,0))"2007",(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2008,1,0))"2008",+(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2009,1,0))"2009",(SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2010,1,0))"2010"
                                                                             *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> SELECT COUNT(*) AS "TOTAL", SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2007,1,0))"2007",SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2008,1,0))"2008",+SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2009,1,0))"2009",SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2010,1,0))"2010";
SELECT COUNT(*) AS "TOTAL", SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2007,1,0))"2007",SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2008,1,0))"2008",+SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2009,1,0))"2009",SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2010,1,0))"2010"
                                                                                                                                                                                                                                                       *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT COUNT(*) AS "TOTAL", SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2007,1,0))"2007",SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2008,1,0))"2008",+SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2009,1,0))"2009",SUM (DECODE(TO_CHAR(HIRE_DATE,'YYYY'),2010,1,0))"2010" FROM EMPLOYEES;

     TOTAL       2007       2008       2009       2010                          
---------- ---------- ---------- ---------- ----------                          
       107         19         11          0          0                          

SQL> SELECT JOB_ID, SUM (DECODE(DEPARTMENT_ID,20,SALARY))"20",SUM (DECODE(DEPARTMENT_ID,20,SALARY))"50",SUM (DECODE(DEPARTMENT_ID,20,SALARY))"80",SUM (DECODE(DEPARTMENT_ID,20,SALARY))"90", FROM EMPLOYEES;
SELECT JOB_ID, SUM (DECODE(DEPARTMENT_ID,20,SALARY))"20",SUM (DECODE(DEPARTMENT_ID,20,SALARY))"50",SUM (DECODE(DEPARTMENT_ID,20,SALARY))"80",SUM (DECODE(DEPARTMENT_ID,20,SALARY))"90", FROM EMPLOYEES
                                                                                                                                                                                        *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT JOB_ID, SUM (DECODE(DEPARTMENT_ID,20,SALARY,0))"20",SUM (DECODE(DEPARTMENT_ID,20,SALARY,0))"50",SUM (DECODE(DEPARTMENT_ID,20,SALARY),0)"80",SUM (DECODE(DEPARTMENT_ID,20,SALARY),0)"90", FROM EMPLOYEES;
SELECT JOB_ID, SUM (DECODE(DEPARTMENT_ID,20,SALARY,0))"20",SUM (DECODE(DEPARTMENT_ID,20,SALARY,0))"50",SUM (DECODE(DEPARTMENT_ID,20,SALARY),0)"80",SUM (DECODE(DEPARTMENT_ID,20,SALARY),0)"90", FROM EMPLOYEES
                                                                                                       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT JOB_ID, SUM (DECODE(DEPARTMENT_ID,20,SALARY,0))"20",SUM (DECODE(DEPARTMENT_ID,50,SALARY,0))"50",SUM (DECODE(DEPARTMENT_ID,80,SALARY))"80",SUM (DECODE(DEPARTMENT_ID,90,SALARY))"90", FROM EMPLOYEES;
SELECT JOB_ID, SUM (DECODE(DEPARTMENT_ID,20,SALARY,0))"20",SUM (DECODE(DEPARTMENT_ID,50,SALARY,0))"50",SUM (DECODE(DEPARTMENT_ID,80,SALARY))"80",SUM (DECODE(DEPARTMENT_ID,90,SALARY))"90", FROM EMPLOYEES
                                                                                                                                                                                            *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT JOB_ID, SUM (DECODE(DEPARTMENT_ID,20,SALARY))"20",SUM (DECODE(DEPARTMENT_ID,50,SALARY)"50",SUM (DECODE(DEPARTMENT_ID,80,SALARY))"80",SUM (DECODE(DEPARTMENT_ID,90,SALARY))"90", FROM EMPLOYEES;
SELECT JOB_ID, SUM (DECODE(DEPARTMENT_ID,20,SALARY))"20",SUM (DECODE(DEPARTMENT_ID,50,SALARY)"50",SUM (DECODE(DEPARTMENT_ID,80,SALARY))"80",SUM (DECODE(DEPARTMENT_ID,90,SALARY))"90", FROM EMPLOYEES
                                                                                             *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> SELECT JOB_ID, SUM (DECODE(DEPARTMENT_ID,20,SALARY))"20",SUM (DECODE(DEPARTMENT_ID,50,SALARY))"50",SUM (DECODE(DEPARTMENT_ID,80,SALARY))"80",SUM (DECODE(DEPARTMENT_ID,90,SALARY))"90", FROM EMPLOYEES;
SELECT JOB_ID, SUM (DECODE(DEPARTMENT_ID,20,SALARY))"20",SUM (DECODE(DEPARTMENT_ID,50,SALARY))"50",SUM (DECODE(DEPARTMENT_ID,80,SALARY))"80",SUM (DECODE(DEPARTMENT_ID,90,SALARY))"90", FROM EMPLOYEES
                                                                                                                                                                                        *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT JOB_ID,
  2  SUM(DECODE(DEPARTMENT_ID,20,SALARY))"20",
  3  SUM(DECODE(DEPARTMENT_ID,50,SALARY))"50",
  4  SUM(DECODE(DEPARTMENT_ID,80,SALARY))"80",
  5  SUM(DECODE(DEPARTMENT_ID,90,SALARY))"90",
  6  FROM EMPLOYEES GROUP BY JOB_ID;
FROM EMPLOYEES GROUP BY JOB_ID
*
ERROR at line 6:
ORA-00936: missing expression 


SQL> SELECT JOB_ID,
  2  SUM(DECODE(DEPARTMENT_ID,20,SALARY))"20",
  3  SUM(DECODE(DEPARTMENT_ID,50,SALARY))"50",
  4  SUM(DECODE(DEPARTMENT_ID,80,SALARY))"80",
  5  SUM(DECODE(DEPARTMENT_ID,90,SALARY))"90",
  6  FROM EMPLOYEES GROUP BY JOB_ID;
FROM EMPLOYEES GROUP BY JOB_ID
*
ERROR at line 6:
ORA-00936: missing expression 


SQL> SELECT JOB_ID,
  2  SUM (DECODE(DEPARTMENT_ID,20,SALARY))"20",
  3  SUM (DECODE(DEPARTMENT_ID,50,SALARY))"50",
  4  SUM (DECODE(DEPARTMENT_ID,80,SALARY))"80",
  5  SUM (DECODE(DEPARTMENT_ID,20,SALARY))"90",
  6  FROM EMPLOYEE
  7  GROUP BY JOB_ID;
FROM EMPLOYEE
*
ERROR at line 6:
ORA-00936: missing expression 


SQL> SELECT JOB_ID,
  2  SUM(DECODE(DEPARTMENT_ID,20,SALARY)) "20",
  3  SUM(DECODE(DEPARTMENT_ID,50,SALARY)) "50",
  4  SUM(DECODE(DEPARTMENT_ID,80,SALARY)) "80",
  5  SUM(DECODE(DEPARTMENT_ID,90,SALARY)) "90",
  6  FROM EMPLOYEES GROUP BY JOB_ID;
FROM EMPLOYEES GROUP BY JOB_ID
*
ERROR at line 6:
ORA-00936: missing expression 


SQL> SELECT JOB_ID,
  2  SUM(DECODE(DEPARTMENT_ID,20,SALARY)) "20",
  3  SUM(DECODE(DEPARTMENT_ID,50,SALARY)) "50",
  4  SUM(DECODE(DEPARTMENT_ID,80,SALARY)) "80",
  5  SUM(DECODE(DEPARTMENT_ID,90,SALARY)) "90"
  6  FROM EMPLOYEES GROUP BY JOB_ID;

JOB_ID             20         50         80         90                          
---------- ---------- ---------- ---------- ----------                          
IT_PROG                                                                         
AC_MGR                                                                          
AC_ACCOUNT                                                                      
ST_MAN                     36400                                                
PU_MAN                                                                          
AD_ASST                                                                         
AD_VP                                            34000                          
SH_CLERK                   64300                                                
FI_ACCOUNT                                                                      
FI_MGR                                                                          
PU_CLERK                                                                        

JOB_ID             20         50         80         90                          
---------- ---------- ---------- ---------- ----------                          
SA_MAN                                61000                                     
MK_MAN          13000                                                           
PR_REP                                                                          
AD_PRES                                          24000                          
SA_REP                               243500                                     
MK_REP           6000                                                           
ST_CLERK                   55700                                                
HR_REP                                                                          

19 rows selected.

SQL> spool off
