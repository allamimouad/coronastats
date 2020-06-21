-- this script to initializing the DataBase

DECLARE

  varcity nt_city;
  var NUMBER;


BEGIN

    -- inserting --  Tanger – Tétouan – Al Hoceima

    varcity := nt_city( 
                        new city('Tanger Assilah', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Mdiq Fnideq', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Tetouan', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Fahs Anjra', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Larache', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Al Hoceima', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Chefchaouen', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Ouazzane',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Tanger-Tetouan-Al-Hoceima');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Tanger-Tetouan-Al-Hoceima';
    
    -- inserting -- L'oriental

    varcity := nt_city( 
                        new city('Oujda Angad', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Nador', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Driouch', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Jerada', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Berkan', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Taourirt', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Guercif', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Figuig',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Loriental');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Loriental';
    
    -- inserting -- Fès - Meknès

    varcity := nt_city( 
                        new city('Fes', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Meknes', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('El Hajeb', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Ifrane', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Moulay Yacoub', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Sefrou', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Boulemane', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Taounate', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Taza',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Fes-Meknes');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Fes-Meknes';
    
    -- inserting -- Rabat - Salé- Kénitra

    varcity := nt_city( 
                        new city('Rabat', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Sale', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Skhirate Temara', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Kenitra', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Khemisset', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Sidi Kacem', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Sidi Slimane',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Rabat-Sale-Kenitra');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Rabat-Sale-Kenitra';
    
    -- inserting -- Béni Mellal- Khénifra

    varcity := nt_city( 
                        new city('Beni Mellal', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Azilal', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Fquih Ben Salah', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Khenifra', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Khouribga',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Beni-Mellal-Khenifra');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Beni-Mellal-Khenifra';
    
    -- inserting -- Casablanca- Settat

    varcity := nt_city( 
                        new city('Casablanca', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Mohammadia', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('El Jadida', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Nouaceur', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Mediouna', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Benslimane', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Berrechid', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Settat', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Sidi Bennour',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Casablanca-Settat');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Casablanca-Settat';
    
    -- inserting -- Marrakech - Safi

    varcity := nt_city( 
                        new city('Marrakech', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Chichaoua', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Al Haouz', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Kelaa des Sraghna', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Essaouira', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Rehamna', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Safi', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Youssoufia',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Marrakech-Safi');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Marrakech-Safi';
    
    -- inserting -- Darâa - Tafilalet

    varcity := nt_city( 
                        new city('Errachidia', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Ouarzazate', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Midelt', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Tinghir', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Zagora',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Daraa-Tafilalet');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Daraa-Tafilalet';
    
    -- inserting -- Souss - Massa

    varcity := nt_city( 
                        new city('Agadir Ida Ou Tanane', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Inezgane Ait Melloul',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) )  ,
                        new city('Chtouka Ait Baha',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) )  ,
                        new city('Taroudannt',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) )  ,
                        new city('Tiznit',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) )  ,
                        new city('Tata',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Souss-Massa');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Souss-Massa';
    
    -- inserting -- Guelmim - Oued Noun

    varcity := nt_city( 
                        new city('Guelmim', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,13) ) )   ,
                        new city('Assa Zag', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',11,4,7) ) )   ,
                        new city('Tan Tan', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',5,0,7) ) )   ,
                        new city('Sidi Ifni',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',10,3,6) ) ) 
                        );                 
                       
    INSERT INTO region (c_name) VALUES ('Guelmim-Oued-Noun');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Guelmim-Oued-Noun';
    
    -- inserting -- Laâyoune - Sakia El Hamra

    varcity := nt_city( 
                        new city('Laayoune', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Boujdour', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Tarfaya', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Es Semara',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Laayoune-Sakia-El-Hamra');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Laayoune-Sakia-El-Hamra';
    
    -- inserting -- Dakhla-Oued Eddahab

    varcity := nt_city( 
                        new city('Oued Ed Dahab', nt_corona_case( corona_case('8-06-2020',10,2,5) , corona_case('9-06-2020',15,1,7) ) )   ,
                        new city('Aousserd',nt_corona_case( corona_case('8-06-2020',4,3,10) , corona_case('9-06-2020',9,14,8) ) ) 
                        );                 
                     
    INSERT INTO region (c_name) VALUES ('Dakhla-Oued-Ed-Dahab');
    
    UPDATE region 
    SET c_cities = varcity
    WHERE c_name = 'Dakhla-Oued-Ed-Dahab';

END;