SQL>spool C:\Users\Admin\Desktop\Vaibhav\day5\sba.sql

SQL> create table sailors(sid NUMBER PRIMARY KEY,Sname varchar2(20),Rating NUMBER,age NUMBER);
create table sailors(sid NUMBER PRIMARY KEY,Sname varchar2(20),Rating NUMBER,age NUMBER)
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> drop table sailors;

Table dropped.

SQL> create table sailors(sid NUMBER PRIMARY KEY,Sname varchar2(20),Rating NUMBER,age NUMBER);

Table created.

SQL> drop table boats;

Table dropped.

SQL> create table boats(Bid NUMBER PRIMARY KEY,Bname varchar2(20),Colour varchar2(10));

Table created.

SQL> create table reserves(SID NUMBER,BID NUMBER,DAY DATE);

Table created.

SQL> alter table reserves ADD CONSTRAINT FK1 FOREIGN KEY (SID) REFERENCES sailors(SID);

Table altered.

SQL> alter table reserves ADD CONSTRAINT FK2 FOREIGN KEY (BID) REFERENCES boats(BID);

Table altered.

SQL> alter table sailors ADD CONSTRAINT U UNIQUE (RATING);

Table altered.

SQL> insert into sailors values(22,'Dustin',7,45);

1 row created.

SQL> insert into sailors values(29,'Brutus',1,33);

1 row created.

SQL> insert into sailors values(31,'lubber',9,55);

1 row created.

SQL> insert into sailors values(32,'andy',8,25.0);

1 row created.

SQL> 
SQL> insert into sailors values(32,'andy',8,25.0);
insert into sailors values(32,'andy',8,25.0)
*
ERROR at line 1:
ORA-00001: unique constraint (HR.SYS_C0011135) violated 


SQL> 
SQL> insert into sailors values(58,'rusty',10,35);

1 row created.


SQL> insert into boats values(101,'interlake','blue');

1 row created.

SQL> insert into boats values(102,'interlake','red');

1 row created.

SQL> insert into boats values(103,'clipper','green');

1 row created.

SQL> insert into boats values(104,'marine','red');

1 row created.

SQL> alter session set nls_date_format = 'DD-MON-YYYY HH24:MI:SS';

Session altered.

SQL> alter session set nls_date_format = 'dd-mm-yyyy ';

Session altered.

SQL> insert into reserves values(22,101,'1-1-2004');

1 row created.

SQL> insert into reserves values(22,102,'1-1-2004');

1 row created.

SQL> insert into reserves values(22,103,'1-2-2004');

1 row created.

SQL> insert into reserves values(32,104,'7-4-2005');

1 row created.


SQL> SELECT sname FROM Sailors S, Reserves R WHERE S.sid = R.sid ;

SNAME                                                                           
--------------------                                                            
Dustin                                                                          
Dustin                                                                          
Dustin                                                                          
andy                                                                            


SQL> SELECT S.sname FROM Sailors S, Reserves R, Boats B WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'red';
SELECT S.sname FROM Sailors S, Reserves R, Boats B WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'red'
                                                                                             *
ERROR at line 1:
ORA-00904: "B"."COLOR": invalid identifier 


SQL> desc boat;
ERROR:
ORA-04043: object boat does not exist 


SQL> desc boats;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BID                                       NOT NULL NUMBER
 BNAME                                              VARCHAR2(20)
 COLOUR                                             VARCHAR2(10)

SQL> SELECT S.sname FROM Sailors S, Reserves R, Boats B WHERE S.sid = R.sid AND R.bid = B.bid AND B.colour = `red';
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> SELECT S.sname FROM Sailors S, Reserves R, Boats B WHERE S.sid = R.sid AND R.bid = B.bid AND B.colour = 'red';

SNAME                                                                           
--------------------                                                            
Dustin                                                                          
andy                                                                            

SQL> SELECT S.age
  2  FROM sailors S
  3  WHERE sname LIKE 'B_%B';

no rows selected


SQL> SELECT R.sid FROM Boats B, Reserves R WHERE R.bid = B.bid AND B.colour = 'red'
  2   INTERSECT SELECT R2.sid FROM Boats B2, Reserves R2 WHERE R2.bid = B2.bid AND B2.colour = 'green';

       SID                                                                      
----------                                                                      
        22                                                                      

SQL> spool off;
