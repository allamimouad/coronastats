DECLARE

  name VARCHAR2(25);
  v_city nt_city;
  v_region region%ROWTYPE;

BEGIN
    
    SELECT * 
    INTO v_region
    FROM region 
    WHERE ROWNUM <= 1;
    
    DBMS_OUTPUT.PUT_LINE(v_region.c_cities(1).c_corona_cases(v_region.c_cities(1).c_corona_cases.LAST).c_date);
    
    
  INSERT INTO TABLE (
                        SELECT c.c_corona_cases
                        FROM region r, TABLE(r.c_cities) c 
                        WHERE c.c_name = 'Oued Ed Dahab' 
                    )
  VALUES (
      corona_case('8-06-2020',4,22,33)
  );

    
    SELECT * 
    INTO v_region
    FROM region 
    WHERE ROWNUM <= 1;
    
    DBMS_OUTPUT.PUT_LINE(v_region.c_cities(1).c_corona_cases(v_region.c_cities(1).c_corona_cases.LAST).c_date);

END;








-- curser of corona cases of a specific city work

DECLARE

  city_name VARCHAR2(40);
  
  
  CURSOR c_city_info ( p_name VARCHAR )
    IS
        SELECT * 
        FROM TABLE( SELECT c_corona_cases 
                    FROM TABLE( SELECT c_cities FROM region ) 
                    WHERE c_name = p_name );
                    
    v_corona_case c_city_info%rowtype;
    
    
BEGIN
    
    city_name := 'Oued Ed Dahab';
    
    dbms_output.put_line('corona cases of city : ' || city_name);
    OPEN c_city_info(city_name);
    
    LOOP
        FETCH c_city_info INTO v_corona_case;
        EXIT WHEN c_city_info%notfound;
        dbms_output.put_line(v_corona_case.c_date || ': ' ||v_corona_case.c_confirmed);
    END LOOP;
    CLOSE c_city_info;

END;


-- calling the functions ( show_city , show_region , insert_corona_case_to_a_city )



DECLARE 

    TYPE record_corona_case IS RECORD(
        c_date DATE,
        c_confirmed NUMBER,
        c_deaths NUMBER,
        c_recovered NUMBER
    ); 
    
    TYPE record_statistic IS RECORD(
        c_confirmed NUMBER,
        c_deaths NUMBER,
        c_recovered NUMBER
    ); 
    
    TYPE names IS RECORD(
        c_name   VARCHAR2(50)
    ); 
 
    
    c_city_info sys_refcursor; 
    v_corona_case record_corona_case;
    v_statistic record_statistic ;
    
    v_name names;
    
    conected NUMBER;
    
BEGIN 

   --c_city_info := show_city('Oued Ed Dahab'); 
   
   --c_city_info := show_region(); 
   
   --c_city_info := morroco_statistic();
   /*
   c_city_info := get_regions();
   
   
   LOOP
        FETCH c_city_info INTO v_name;
        EXIT WHEN c_city_info%notfound;
        --dbms_output.put_line(v_corona_case.c_date || ': ' ||v_corona_case.c_confirmed);
        --dbms_output.put_line(v_statistic.c_confirmed || ': ' || v_statistic.c_deaths || ': ' || v_statistic.c_recovered );
        dbms_output.put_line( v_name.c_name );
    END LOOP;
   */
   
   /*
   insert_corona_case_to_a_city('El Jadida','10-06-2020',4,22,33);
   insert_corona_case_to_a_city('El Jadida','11-06-2020',4,22,33);
   insert_corona_case_to_a_city('El Jadida','12-06-2020',4,22,33);
   insert_corona_case_to_a_city('El Jadida','13-06-2020',4,22,33);
   insert_corona_case_to_a_city('El Jadida','14-06-2020',4,22,33);
   insert_corona_case_to_a_city('El Jadida','15-06-2020',4,22,33);
   insert_corona_case_to_a_city('El Jadida','16-06-2020',200,22,0);
   
   */
   
   
   conected := check_login('admin' ,'admin');
   dbms_output.put_line( conected );
   
END;




-- you can see with this script values of corona_case
DECLARE

  name VARCHAR2(25);
  v_city nt_city;
  v_region region%ROWTYPE;

BEGIN
    
    SELECT * 
    INTO v_region
    FROM region 
    WHERE ROWNUM <= 1;
    
    DBMS_OUTPUT.PUT_LINE(v_region.c_cities(1).c_corona_cases(1).c_date);
    
    SELECT * 
    INTO v_region
    FROM region 
    WHERE ROWNUM <= 1;
    
    DBMS_OUTPUT.PUT_LINE(v_region.c_cities(1).c_corona_cases(v_region.c_cities(1).c_corona_cases.LAST).c_date);

END;




SELECT COUNT(*)
FROM admin
where c_name = 'sasa' and c_pass = 'sasa' ;
