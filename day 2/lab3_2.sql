SQL> select current_date as "Date";
select current_date as "Date"
                            *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select current_date "Date";
select current_date "Date"
                         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select current_date "Date" from employees;

Date                                                                            
---------                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       

Date                                                                            
---------                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       

Date                                                                            
---------                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       

Date                                                                            
---------                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       

Date                                                                            
---------                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       

Date                                                                            
---------                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       

Date                                                                            
---------                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       

Date                                                                            
---------                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       

Date                                                                            
---------                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       

Date                                                                            
---------                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       
31-DEC-19                                                                       

107 rows selected.

SQL> select current_date "Date" from dual;

Date                                                                            
---------                                                                       
31-DEC-19                                                                       

SQL> select employee_id,last_name,salary,salary+salary*0.15 "New Salary from employees;
ERROR:
ORA-01740: missing double quote in identifier 


SQL> select employee_id,last_name,salary,salary+salary*0.15 "New Salary" from employees;

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        100 King                           24000      27600                     
        101 Kochhar                        17000      19550                     
        102 De Haan                        17000      19550                     
        103 Hunold                          9000      10350                     
        104 Ernst                           6000       6900                     
        105 Austin                          4800       5520                     
        106 Pataballa                       4800       5520                     
        107 Lorentz                         4200       4830                     
        108 Greenberg                      12008    13809.2                     
        109 Faviet                          9000      10350                     
        110 Chen                            8200       9430                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        111 Sciarra                         7700       8855                     
        112 Urman                           7800       8970                     
        113 Popp                            6900       7935                     
        114 Raphaely                       11000      12650                     
        115 Khoo                            3100       3565                     
        116 Baida                           2900       3335                     
        117 Tobias                          2800       3220                     
        118 Himuro                          2600       2990                     
        119 Colmenares                      2500       2875                     
        120 Weiss                           8000       9200                     
        121 Fripp                           8200       9430                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        122 Kaufling                        7900       9085                     
        123 Vollman                         6500       7475                     
        124 Mourgos                         5800       6670                     
        125 Nayer                           3200       3680                     
        126 Mikkilineni                     2700       3105                     
        127 Landry                          2400       2760                     
        128 Markle                          2200       2530                     
        129 Bissot                          3300       3795                     
        130 Atkinson                        2800       3220                     
        131 Marlow                          2500       2875                     
        132 Olson                           2100       2415                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        133 Mallin                          3300       3795                     
        134 Rogers                          2900       3335                     
        135 Gee                             2400       2760                     
        136 Philtanker                      2200       2530                     
        137 Ladwig                          3600       4140                     
        138 Stiles                          3200       3680                     
        139 Seo                             2700       3105                     
        140 Patel                           2500       2875                     
        141 Rajs                            3500       4025                     
        142 Davies                          3100       3565                     
        143 Matos                           2600       2990                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        144 Vargas                          2500       2875                     
        145 Russell                        14000      16100                     
        146 Partners                       13500      15525                     
        147 Errazuriz                      12000      13800                     
        148 Cambrault                      11000      12650                     
        149 Zlotkey                        10500      12075                     
        150 Tucker                         10000      11500                     
        151 Bernstein                       9500      10925                     
        152 Hall                            9000      10350                     
        153 Olsen                           8000       9200                     
        154 Cambrault                       7500       8625                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        155 Tuvault                         7000       8050                     
        156 King                           10000      11500                     
        157 Sully                           9500      10925                     
        158 McEwen                          9000      10350                     
        159 Smith                           8000       9200                     
        160 Doran                           7500       8625                     
        161 Sewall                          7000       8050                     
        162 Vishney                        10500      12075                     
        163 Greene                          9500      10925                     
        164 Marvins                         7200       8280                     
        165 Lee                             6800       7820                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        166 Ande                            6400       7360                     
        167 Banda                           6200       7130                     
        168 Ozer                           11500      13225                     
        169 Bloom                          10000      11500                     
        170 Fox                             9600      11040                     
        171 Smith                           7400       8510                     
        172 Bates                           7300       8395                     
        173 Kumar                           6100       7015                     
        174 Abel                           11000      12650                     
        175 Hutton                          8800      10120                     
        176 Taylor                          8600       9890                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        177 Livingston                      8400       9660                     
        178 Grant                           7000       8050                     
        179 Johnson                         6200       7130                     
        180 Taylor                          3200       3680                     
        181 Fleaur                          3100       3565                     
        182 Sullivan                        2500       2875                     
        183 Geoni                           2800       3220                     
        184 Sarchand                        4200       4830                     
        185 Bull                            4100       4715                     
        186 Dellinger                       3400       3910                     
        187 Cabrio                          3000       3450                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        188 Chung                           3800       4370                     
        189 Dilly                           3600       4140                     
        190 Gates                           2900       3335                     
        191 Perkins                         2500       2875                     
        192 Bell                            4000       4600                     
        193 Everett                         3900       4485                     
        194 McCain                          3200       3680                     
        195 Jones                           2800       3220                     
        196 Walsh                           3100       3565                     
        197 Feeney                          3000       3450                     
        198 OConnell                        2600       2990                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        199 Grant                           2600       2990                     
        200 Whalen                          4400       5060                     
        201 Hartstein                      13000      14950                     
        202 Fay                             6000       6900                     
        203 Mavris                          6500       7475                     
        204 Baer                           10000      11500                     
        205 Higgins                        12008    13809.2                     
        206 Gietz                           8300       9545                     

107 rows selected.

SQL> select employee_id,last_name,salary,salary+salary*0.15 "New Salary",salary-(salary+salary*0.15)"Increase" from employees;

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        100 King                           24000      27600      -3600          
        101 Kochhar                        17000      19550      -2550          
        102 De Haan                        17000      19550      -2550          
        103 Hunold                          9000      10350      -1350          
        104 Ernst                           6000       6900       -900          
        105 Austin                          4800       5520       -720          
        106 Pataballa                       4800       5520       -720          
        107 Lorentz                         4200       4830       -630          
        108 Greenberg                      12008    13809.2    -1801.2          
        109 Faviet                          9000      10350      -1350          
        110 Chen                            8200       9430      -1230          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        111 Sciarra                         7700       8855      -1155          
        112 Urman                           7800       8970      -1170          
        113 Popp                            6900       7935      -1035          
        114 Raphaely                       11000      12650      -1650          
        115 Khoo                            3100       3565       -465          
        116 Baida                           2900       3335       -435          
        117 Tobias                          2800       3220       -420          
        118 Himuro                          2600       2990       -390          
        119 Colmenares                      2500       2875       -375          
        120 Weiss                           8000       9200      -1200          
        121 Fripp                           8200       9430      -1230          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        122 Kaufling                        7900       9085      -1185          
        123 Vollman                         6500       7475       -975          
        124 Mourgos                         5800       6670       -870          
        125 Nayer                           3200       3680       -480          
        126 Mikkilineni                     2700       3105       -405          
        127 Landry                          2400       2760       -360          
        128 Markle                          2200       2530       -330          
        129 Bissot                          3300       3795       -495          
        130 Atkinson                        2800       3220       -420          
        131 Marlow                          2500       2875       -375          
        132 Olson                           2100       2415       -315          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        133 Mallin                          3300       3795       -495          
        134 Rogers                          2900       3335       -435          
        135 Gee                             2400       2760       -360          
        136 Philtanker                      2200       2530       -330          
        137 Ladwig                          3600       4140       -540          
        138 Stiles                          3200       3680       -480          
        139 Seo                             2700       3105       -405          
        140 Patel                           2500       2875       -375          
        141 Rajs                            3500       4025       -525          
        142 Davies                          3100       3565       -465          
        143 Matos                           2600       2990       -390          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        144 Vargas                          2500       2875       -375          
        145 Russell                        14000      16100      -2100          
        146 Partners                       13500      15525      -2025          
        147 Errazuriz                      12000      13800      -1800          
        148 Cambrault                      11000      12650      -1650          
        149 Zlotkey                        10500      12075      -1575          
        150 Tucker                         10000      11500      -1500          
        151 Bernstein                       9500      10925      -1425          
        152 Hall                            9000      10350      -1350          
        153 Olsen                           8000       9200      -1200          
        154 Cambrault                       7500       8625      -1125          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        155 Tuvault                         7000       8050      -1050          
        156 King                           10000      11500      -1500          
        157 Sully                           9500      10925      -1425          
        158 McEwen                          9000      10350      -1350          
        159 Smith                           8000       9200      -1200          
        160 Doran                           7500       8625      -1125          
        161 Sewall                          7000       8050      -1050          
        162 Vishney                        10500      12075      -1575          
        163 Greene                          9500      10925      -1425          
        164 Marvins                         7200       8280      -1080          
        165 Lee                             6800       7820      -1020          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        166 Ande                            6400       7360       -960          
        167 Banda                           6200       7130       -930          
        168 Ozer                           11500      13225      -1725          
        169 Bloom                          10000      11500      -1500          
        170 Fox                             9600      11040      -1440          
        171 Smith                           7400       8510      -1110          
        172 Bates                           7300       8395      -1095          
        173 Kumar                           6100       7015       -915          
        174 Abel                           11000      12650      -1650          
        175 Hutton                          8800      10120      -1320          
        176 Taylor                          8600       9890      -1290          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        177 Livingston                      8400       9660      -1260          
        178 Grant                           7000       8050      -1050          
        179 Johnson                         6200       7130       -930          
        180 Taylor                          3200       3680       -480          
        181 Fleaur                          3100       3565       -465          
        182 Sullivan                        2500       2875       -375          
        183 Geoni                           2800       3220       -420          
        184 Sarchand                        4200       4830       -630          
        185 Bull                            4100       4715       -615          
        186 Dellinger                       3400       3910       -510          
        187 Cabrio                          3000       3450       -450          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        188 Chung                           3800       4370       -570          
        189 Dilly                           3600       4140       -540          
        190 Gates                           2900       3335       -435          
        191 Perkins                         2500       2875       -375          
        192 Bell                            4000       4600       -600          
        193 Everett                         3900       4485       -585          
        194 McCain                          3200       3680       -480          
        195 Jones                           2800       3220       -420          
        196 Walsh                           3100       3565       -465          
        197 Feeney                          3000       3450       -450          
        198 OConnell                        2600       2990       -390          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        199 Grant                           2600       2990       -390          
        200 Whalen                          4400       5060       -660          
        201 Hartstein                      13000      14950      -1950          
        202 Fay                             6000       6900       -900          
        203 Mavris                          6500       7475       -975          
        204 Baer                           10000      11500      -1500          
        205 Higgins                        12008    13809.2    -1801.2          
        206 Gietz                           8300       9545      -1245          

107 rows selected.

SQL> save C:\Users\Admin\Desktop\Vaibhav\prac3_2.sql
Created file C:\Users\Admin\Desktop\Vaibhav\prac3_2.sql
SQL> select initcap(last_name),length(last_name) from employees where last_name like 'J%','A%','M%';
select initcap(last_name),length(last_name) from employees where last_name like 'J%','A%','M%'
                                                                                    *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select initcap(last_name),length(last_name) from employees where last_name like 'J%','A%','M%'
  2  ;
select initcap(last_name),length(last_name) from employees where last_name like 'J%','A%','M%'
                                                                                    *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select intcap(last_name),length(last_name)
  2  from employees
  3  where last_name like 'J%' or last_name like 'A%' or last_name like 'M%';
select intcap(last_name),length(last_name)
       *
ERROR at line 1:
ORA-00904: "INTCAP": invalid identifier 


SQL> where last_name like 'J%' or last_name like 'A%' or last_name like 'M%';
SP2-0734: unknown command beginning "where last..." - rest of line ignored.
SQL> 
SQL> select inticap(last_name),length(last_name)
  2  from employees
  3  where last_name like 'J%' or last_name like 'A%' or last_name like 'M%';
select inticap(last_name),length(last_name)
       *
ERROR at line 1:
ORA-00904: "INTICAP": invalid identifier 


SQL> select initcap(last_name),length(last_name)
  2  from employees
  3  where last_name like 'J%' or last_name like 'A%' or last_name like 'M%';

INITCAP(LAST_NAME)        LENGTH(LAST_NAME)                                     
------------------------- -----------------                                     
Abel                                      4                                     
Ande                                      4                                     
Atkinson                                  8                                     
Austin                                    6                                     
Johnson                                   7                                     
Jones                                     5                                     
Mallin                                    6                                     
Markle                                    6                                     
Marlow                                    6                                     
Marvins                                   7                                     
Matos                                     5                                     

INITCAP(LAST_NAME)        LENGTH(LAST_NAME)                                     
------------------------- -----------------                                     
Mavris                                    6                                     
Mccain                                    6                                     
Mcewen                                    6                                     
Mikkilineni                              11                                     
Mourgos                                   7                                     

16 rows selected.

SQL> select last_name, months_between(hire_date)"MONTHS_WORKED"
  2  from employees order by months_between(hire_date);
select last_name, months_between(hire_date)"MONTHS_WORKED"
                  *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select last_name,round(months_between(current_date,hire_date))"MONTHS_WORKED" FROM EMPLOYEES ORDER BY 2;

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Banda                               140                                         
Kumar                               140                                         
Ande                                141                                         
Markle                              142                                         
Lee                                 142                                         
Philtanker                          143                                         
Zlotkey                             143                                         
Marvins                             143                                         
Geoni                               143                                         
Johnson                             144                                         
Perkins                             144                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Grant                               144                                         
Popp                                145                                         
Gee                                 145                                         
Tuvault                             145                                         
Mourgos                             146                                         
Cambrault                           147                                         
Colmenares                          149                                         
Sullivan                            150                                         
OConnell                            150                                         
Ernst                               151                                         
Grant                               151                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Olson                               153                                         
Greene                              153                                         
Bates                               153                                         
Jones                               153                                         
Smith                               154                                         
Lorentz                             155                                         
Cabrio                              155                                         
Landry                              156                                         
Cambrault                           157                                         
Himuro                              158                                         
Sewall                              158                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Mikkilineni                         159                                         
Rogers                              160                                         
Vargas                              162                                         
Dellinger                           162                                         
Gates                               162                                         
McCain                              162                                         
Feeney                              163                                         
Livingston                          164                                         
Walsh                               164                                         
Patel                               165                                         
Olsen                               165                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Bloom                               165                                         
Taylor                              165                                         
Urman                               166                                         
Matos                               166                                         
Fleaur                              166                                         
Pataballa                           167                                         
Seo                                 167                                         
Fox                                 167                                         
Taylor                              167                                         
Hunold                              168                                         
Baida                               168                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Doran                               169                                         
Atkinson                            170                                         
Stiles                              170                                         
Vishney                             170                                         
Kochhar                             171                                         
Chen                                171                                         
Sciarra                             171                                         
Vollman                             171                                         
Bissot                              172                                         
Hall                                172                                         
Fay                                 172                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Tobias                              173                                         
Dilly                               173                                         
Austin                              174                                         
Nayer                               174                                         
Chung                               175                                         
Fripp                               177                                         
Bernstein                           177                                         
Hutton                              177                                         
Errazuriz                           178                                         
Smith                               178                                         
Ozer                                178                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Bull                                178                                         
Everett                             178                                         
Marlow                              179                                         
Davies                              179                                         
Tucker                              179                                         
Partners                            180                                         
Russell                             183                                         
Weiss                               185                                         
McEwen                              185                                         
Mallin                              187                                         
Abel                                188                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Sully                               190                                         
Hartstein                           190                                         
King                                191                                         
Sarchand                            191                                         
Bell                                191                                         
Rajs                                194                                         
Whalen                              195                                         
King                                198                                         
Ladwig                              198                                         
Khoo                                199                                         
Kaufling                            200                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Raphaely                            205                                         
Greenberg                           208                                         
Faviet                              209                                         
Gietz                               211                                         
Mavris                              211                                         
Baer                                211                                         
Higgins                             211                                         
De Haan                             228                                         

107 rows selected.

SQL> select last_name||' earns '||salary ||' but wants '||salary*3 "Dream Salaries" from employees;

Dream Salaries                                                                  
--------------------------------------------------------------------------------
King earns 24000 but wants 72000                                                
Kochhar earns 17000 but wants 51000                                             
De Haan earns 17000 but wants 51000                                             
Hunold earns 9000 but wants 27000                                               
Ernst earns 6000 but wants 18000                                                
Austin earns 4800 but wants 14400                                               
Pataballa earns 4800 but wants 14400                                            
Lorentz earns 4200 but wants 12600                                              
Greenberg earns 12008 but wants 36024                                           
Faviet earns 9000 but wants 27000                                               
Chen earns 8200 but wants 24600                                                 

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Sciarra earns 7700 but wants 23100                                              
Urman earns 7800 but wants 23400                                                
Popp earns 6900 but wants 20700                                                 
Raphaely earns 11000 but wants 33000                                            
Khoo earns 3100 but wants 9300                                                  
Baida earns 2900 but wants 8700                                                 
Tobias earns 2800 but wants 8400                                                
Himuro earns 2600 but wants 7800                                                
Colmenares earns 2500 but wants 7500                                            
Weiss earns 8000 but wants 24000                                                
Fripp earns 8200 but wants 24600                                                

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Kaufling earns 7900 but wants 23700                                             
Vollman earns 6500 but wants 19500                                              
Mourgos earns 5800 but wants 17400                                              
Nayer earns 3200 but wants 9600                                                 
Mikkilineni earns 2700 but wants 8100                                           
Landry earns 2400 but wants 7200                                                
Markle earns 2200 but wants 6600                                                
Bissot earns 3300 but wants 9900                                                
Atkinson earns 2800 but wants 8400                                              
Marlow earns 2500 but wants 7500                                                
Olson earns 2100 but wants 6300                                                 

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Mallin earns 3300 but wants 9900                                                
Rogers earns 2900 but wants 8700                                                
Gee earns 2400 but wants 7200                                                   
Philtanker earns 2200 but wants 6600                                            
Ladwig earns 3600 but wants 10800                                               
Stiles earns 3200 but wants 9600                                                
Seo earns 2700 but wants 8100                                                   
Patel earns 2500 but wants 7500                                                 
Rajs earns 3500 but wants 10500                                                 
Davies earns 3100 but wants 9300                                                
Matos earns 2600 but wants 7800                                                 

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Vargas earns 2500 but wants 7500                                                
Russell earns 14000 but wants 42000                                             
Partners earns 13500 but wants 40500                                            
Errazuriz earns 12000 but wants 36000                                           
Cambrault earns 11000 but wants 33000                                           
Zlotkey earns 10500 but wants 31500                                             
Tucker earns 10000 but wants 30000                                              
Bernstein earns 9500 but wants 28500                                            
Hall earns 9000 but wants 27000                                                 
Olsen earns 8000 but wants 24000                                                
Cambrault earns 7500 but wants 22500                                            

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Tuvault earns 7000 but wants 21000                                              
King earns 10000 but wants 30000                                                
Sully earns 9500 but wants 28500                                                
McEwen earns 9000 but wants 27000                                               
Smith earns 8000 but wants 24000                                                
Doran earns 7500 but wants 22500                                                
Sewall earns 7000 but wants 21000                                               
Vishney earns 10500 but wants 31500                                             
Greene earns 9500 but wants 28500                                               
Marvins earns 7200 but wants 21600                                              
Lee earns 6800 but wants 20400                                                  

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Ande earns 6400 but wants 19200                                                 
Banda earns 6200 but wants 18600                                                
Ozer earns 11500 but wants 34500                                                
Bloom earns 10000 but wants 30000                                               
Fox earns 9600 but wants 28800                                                  
Smith earns 7400 but wants 22200                                                
Bates earns 7300 but wants 21900                                                
Kumar earns 6100 but wants 18300                                                
Abel earns 11000 but wants 33000                                                
Hutton earns 8800 but wants 26400                                               
Taylor earns 8600 but wants 25800                                               

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Livingston earns 8400 but wants 25200                                           
Grant earns 7000 but wants 21000                                                
Johnson earns 6200 but wants 18600                                              
Taylor earns 3200 but wants 9600                                                
Fleaur earns 3100 but wants 9300                                                
Sullivan earns 2500 but wants 7500                                              
Geoni earns 2800 but wants 8400                                                 
Sarchand earns 4200 but wants 12600                                             
Bull earns 4100 but wants 12300                                                 
Dellinger earns 3400 but wants 10200                                            
Cabrio earns 3000 but wants 9000                                                

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Chung earns 3800 but wants 11400                                                
Dilly earns 3600 but wants 10800                                                
Gates earns 2900 but wants 8700                                                 
Perkins earns 2500 but wants 7500                                               
Bell earns 4000 but wants 12000                                                 
Everett earns 3900 but wants 11700                                              
McCain earns 3200 but wants 9600                                                
Jones earns 2800 but wants 8400                                                 
Walsh earns 3100 but wants 9300                                                 
Feeney earns 3000 but wants 9000                                                
OConnell earns 2600 but wants 7800                                              

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Grant earns 2600 but wants 7800                                                 
Whalen earns 4400 but wants 13200                                               
Hartstein earns 13000 but wants 39000                                           
Fay earns 6000 but wants 18000                                                  
Mavris earns 6500 but wants 19500                                               
Baer earns 10000 but wants 30000                                                
Higgins earns 12008 but wants 36024                                             
Gietz earns 8300 but wants 24900                                                

107 rows selected.

SQL> select lpad(salary,12,'$') from employees;

LPAD(SALARY,                                                                    
------------                                                                    
$$$$$$$24000                                                                    
$$$$$$$17000                                                                    
$$$$$$$17000                                                                    
$$$$$$$$9000                                                                    
$$$$$$$$6000                                                                    
$$$$$$$$4800                                                                    
$$$$$$$$4800                                                                    
$$$$$$$$4200                                                                    
$$$$$$$12008                                                                    
$$$$$$$$9000                                                                    
$$$$$$$$8200                                                                    

LPAD(SALARY,                                                                    
------------                                                                    
$$$$$$$$7700                                                                    
$$$$$$$$7800                                                                    
$$$$$$$$6900                                                                    
$$$$$$$11000                                                                    
$$$$$$$$3100                                                                    
$$$$$$$$2900                                                                    
$$$$$$$$2800                                                                    
$$$$$$$$2600                                                                    
$$$$$$$$2500                                                                    
$$$$$$$$8000                                                                    
$$$$$$$$8200                                                                    

LPAD(SALARY,                                                                    
------------                                                                    
$$$$$$$$7900                                                                    
$$$$$$$$6500                                                                    
$$$$$$$$5800                                                                    
$$$$$$$$3200                                                                    
$$$$$$$$2700                                                                    
$$$$$$$$2400                                                                    
$$$$$$$$2200                                                                    
$$$$$$$$3300                                                                    
$$$$$$$$2800                                                                    
$$$$$$$$2500                                                                    
$$$$$$$$2100                                                                    

LPAD(SALARY,                                                                    
------------                                                                    
$$$$$$$$3300                                                                    
$$$$$$$$2900                                                                    
$$$$$$$$2400                                                                    
$$$$$$$$2200                                                                    
$$$$$$$$3600                                                                    
$$$$$$$$3200                                                                    
$$$$$$$$2700                                                                    
$$$$$$$$2500                                                                    
$$$$$$$$3500                                                                    
$$$$$$$$3100                                                                    
$$$$$$$$2600                                                                    

LPAD(SALARY,                                                                    
------------                                                                    
$$$$$$$$2500                                                                    
$$$$$$$14000                                                                    
$$$$$$$13500                                                                    
$$$$$$$12000                                                                    
$$$$$$$11000                                                                    
$$$$$$$10500                                                                    
$$$$$$$10000                                                                    
$$$$$$$$9500                                                                    
$$$$$$$$9000                                                                    
$$$$$$$$8000                                                                    
$$$$$$$$7500                                                                    

LPAD(SALARY,                                                                    
------------                                                                    
$$$$$$$$7000                                                                    
$$$$$$$10000                                                                    
$$$$$$$$9500                                                                    
$$$$$$$$9000                                                                    
$$$$$$$$8000                                                                    
$$$$$$$$7500                                                                    
$$$$$$$$7000                                                                    
$$$$$$$10500                                                                    
$$$$$$$$9500                                                                    
$$$$$$$$7200                                                                    
$$$$$$$$6800                                                                    

LPAD(SALARY,                                                                    
------------                                                                    
$$$$$$$$6400                                                                    
$$$$$$$$6200                                                                    
$$$$$$$11500                                                                    
$$$$$$$10000                                                                    
$$$$$$$$9600                                                                    
$$$$$$$$7400                                                                    
$$$$$$$$7300                                                                    
$$$$$$$$6100                                                                    
$$$$$$$11000                                                                    
$$$$$$$$8800                                                                    
$$$$$$$$8600                                                                    

LPAD(SALARY,                                                                    
------------                                                                    
$$$$$$$$8400                                                                    
$$$$$$$$7000                                                                    
$$$$$$$$6200                                                                    
$$$$$$$$3200                                                                    
$$$$$$$$3100                                                                    
$$$$$$$$2500                                                                    
$$$$$$$$2800                                                                    
$$$$$$$$4200                                                                    
$$$$$$$$4100                                                                    
$$$$$$$$3400                                                                    
$$$$$$$$3000                                                                    

LPAD(SALARY,                                                                    
------------                                                                    
$$$$$$$$3800                                                                    
$$$$$$$$3600                                                                    
$$$$$$$$2900                                                                    
$$$$$$$$2500                                                                    
$$$$$$$$4000                                                                    
$$$$$$$$3900                                                                    
$$$$$$$$3200                                                                    
$$$$$$$$2800                                                                    
$$$$$$$$3100                                                                    
$$$$$$$$3000                                                                    
$$$$$$$$2600                                                                    

LPAD(SALARY,                                                                    
------------                                                                    
$$$$$$$$2600                                                                    
$$$$$$$$4400                                                                    
$$$$$$$13000                                                                    
$$$$$$$$6000                                                                    
$$$$$$$$6500                                                                    
$$$$$$$10000                                                                    
$$$$$$$12008                                                                    
$$$$$$$$8300                                                                    

107 rows selected.

SQL> select rpad('*',trunc(salary/1000),'*') from employees;

RPAD('*',TRUNC(SALARY/1000),'*')                                                
--------------------------------------------------------------------------------
************************                                                        
*****************                                                               
*****************                                                               
*********                                                                       
******                                                                          
****                                                                            
****                                                                            
****                                                                            
************                                                                    
*********                                                                       
********                                                                        

RPAD('*',TRUNC(SALARY/1000),'*')                                                
--------------------------------------------------------------------------------
*******                                                                         
*******                                                                         
******                                                                          
***********                                                                     
***                                                                             
**                                                                              
**                                                                              
**                                                                              
**                                                                              
********                                                                        
********                                                                        

RPAD('*',TRUNC(SALARY/1000),'*')                                                
--------------------------------------------------------------------------------
*******                                                                         
******                                                                          
*****                                                                           
***                                                                             
**                                                                              
**                                                                              
**                                                                              
***                                                                             
**                                                                              
**                                                                              
**                                                                              

RPAD('*',TRUNC(SALARY/1000),'*')                                                
--------------------------------------------------------------------------------
***                                                                             
**                                                                              
**                                                                              
**                                                                              
***                                                                             
***                                                                             
**                                                                              
**                                                                              
***                                                                             
***                                                                             
**                                                                              

RPAD('*',TRUNC(SALARY/1000),'*')                                                
--------------------------------------------------------------------------------
**                                                                              
**************                                                                  
*************                                                                   
************                                                                    
***********                                                                     
**********                                                                      
**********                                                                      
*********                                                                       
*********                                                                       
********                                                                        
*******                                                                         

RPAD('*',TRUNC(SALARY/1000),'*')                                                
--------------------------------------------------------------------------------
*******                                                                         
**********                                                                      
*********                                                                       
*********                                                                       
********                                                                        
*******                                                                         
*******                                                                         
**********                                                                      
*********                                                                       
*******                                                                         
******                                                                          

RPAD('*',TRUNC(SALARY/1000),'*')                                                
--------------------------------------------------------------------------------
******                                                                          
******                                                                          
***********                                                                     
**********                                                                      
*********                                                                       
*******                                                                         
*******                                                                         
******                                                                          
***********                                                                     
********                                                                        
********                                                                        

RPAD('*',TRUNC(SALARY/1000),'*')                                                
--------------------------------------------------------------------------------
********                                                                        
*******                                                                         
******                                                                          
***                                                                             
***                                                                             
**                                                                              
**                                                                              
****                                                                            
****                                                                            
***                                                                             
***                                                                             

RPAD('*',TRUNC(SALARY/1000),'*')                                                
--------------------------------------------------------------------------------
***                                                                             
***                                                                             
**                                                                              
**                                                                              
****                                                                            
***                                                                             
***                                                                             
**                                                                              
***                                                                             
***                                                                             
**                                                                              

RPAD('*',TRUNC(SALARY/1000),'*')                                                
--------------------------------------------------------------------------------
**                                                                              
****                                                                            
*************                                                                   
******                                                                          
******                                                                          
**********                                                                      
************                                                                    
********                                                                        

107 rows selected.

SQL> save C:\Users\Admin\Desktop\Vaibhav\special_assignment1.sql
Created file C:\Users\Admin\Desktop\Vaibhav\special_assignment1.sql
SQL> spool off
