CREATE OR REPLACE FUNCTION show_city (city_name VARCHAR)
   return sys_refcursor
is
     
    cur  sys_refcursor; 
begin
   
   open cur for
      SELECT * 
        FROM TABLE( SELECT c_corona_cases 
                    FROM TABLE( SELECT c_cities FROM region ) 
                    WHERE c_name = city_name );

   return cur;
end ;





CREATE OR REPLACE FUNCTION show_region (region_name VARCHAR DEFAULT '00default@@')
   return sys_refcursor
is
     
    cur  sys_refcursor; 
begin
   
    IF region_name = '00default@@' THEN
    
        open cur for
          SELECT co.*
          FROM region r, TABLE(r.c_cities) c, TABLE(c.c_corona_cases) co ;
      
    ELSE
    
        open cur for
          SELECT co.*
          FROM region r, TABLE(r.c_cities) c, TABLE(c.c_corona_cases) co 
          WHERE r.c_name = region_name ;
          
    END IF;
        
   return cur;
end ;





