CREATE OR REPLACE TYPE corona_case AS OBJECT(
    c_date DATE,
    c_confirmed NUMBER,
    c_deaths NUMBER,
    c_recovered NUMBER
);

CREATE OR REPLACE TYPE nt_corona_case AS TABLE OF corona_case; 

CREATE OR REPLACE TYPE city AS OBJECT (
  c_name   VARCHAR2(40),
  c_corona_cases      nt_corona_case
);

CREATE OR REPLACE TYPE nt_city AS TABLE OF city;

CREATE TABLE region (
  c_name   VARCHAR2(50),
  c_cities     nt_city)
  NESTED TABLE c_cities STORE AS cities_tab
   (NESTED TABLE c_corona_cases STORE AS corona_cases_tab);
   
   
CREATE TABLE admin(
    c_name   VARCHAR2(50),
    c_pass   VARCHAR2(80)
    );
   
 /*     
TYPE record_corona_case IS RECORD(
    c_date DATE,
    c_confirmed NUMBER,
    c_deaths NUMBER,
    c_recovered NUMBER
); 

*/
