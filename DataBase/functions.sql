
-- return a cursors contain the corona cases of a specific city 

CREATE OR REPLACE FUNCTION show_city (city_name VARCHAR)
   return sys_refcursor
is
     
    cur  sys_refcursor; 
begin
   
   open cur for
    SELECT co.*
    FROM region r, TABLE(r.c_cities) c, TABLE(c.c_corona_cases) co 
    WHERE c.c_name = city_name 
    ORDER BY co.c_date ASC;

   return cur;
end ;



-- return a cursors contain the corona cases of a specific region 

CREATE OR REPLACE FUNCTION show_region (region_name VARCHAR DEFAULT '00default@@')
   return sys_refcursor
is
     
    cur  sys_refcursor; 
begin
   
    IF region_name = '00default@@' THEN
    
        open cur for
            SELECT co.c_date , SUM(co.c_confirmed) ,SUM(co.c_deaths) ,SUM(co.c_recovered) 
            FROM region r, TABLE(r.c_cities) c, TABLE(c.c_corona_cases) co 
            group by co.c_date
            ORDER BY co.c_date ASC;
      
    ELSE
    
        open cur for
            SELECT co.c_date , SUM(co.c_confirmed) ,SUM(co.c_deaths) ,SUM(co.c_recovered) 
            FROM region r, TABLE(r.c_cities) c, TABLE(c.c_corona_cases) co 
            WHERE r.c_name = region_name
            group by co.c_date
            ORDER BY co.c_date ASC;
        
          
    END IF;
        
   return cur;
end ;





-- add day_corona_case to specific city

CREATE OR REPLACE PROCEDURE insert_corona_case_to_a_city (v_city_name IN VARCHAR , v_date IN DATE , v_confirmed IN NUMBER , v_deaths IN NUMBER , v_recovered IN NUMBER )
is
BEGIN
    
    INSERT INTO TABLE (
                        SELECT c.c_corona_cases
                        FROM region r, TABLE(r.c_cities) c 
                        WHERE c.c_name = v_city_name 
                        )
    VALUES ( corona_case( v_date , v_confirmed , v_deaths , v_recovered ) );

END;


-- return a morroco statistic

CREATE OR REPLACE FUNCTION morroco_statistic

   return sys_refcursor
is
     
    cur  sys_refcursor; 
begin
   
        open cur for
            SELECT SUM(co.c_confirmed) ,SUM(co.c_deaths) ,SUM(co.c_recovered) 
            FROM region r, TABLE(r.c_cities) c, TABLE(c.c_corona_cases) co ;

   return cur;
end ;





