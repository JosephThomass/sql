CREATE TABLE car_details(id int,name varchar(20),company varchar(20),country varchar(20),Approxprice decimal(3.1));
INSERT INTO car_details values(1, "Beat", "Cheverolet","USA",4);
INSERT INTO car_details values(2, "Swift", "Maruti" , "Japan" ,6);
INSERT INTO car_details values(3, "Escort" , "Ford" , "USA",4.2);
INSERT INTO car_details values(4, "Sunny", "Nissan", "Japan",8);
INSERT INTO car_details values(5, "Beetle" , "Volkswagen" ,"Germany" ,21);
INSERT INTO car_details values(6, "Etios", "Toyota" , "Japan" ,7.2);
INSERT INTO car_details values(7, "Sail",  "Cheverolet" , "USA" ,5);
INSERT INTO car_details values(8, "Aria" , "Tata" , "India" ,7);
INSERT INTO car_details values(9, "Passat" , "Volkswagen" , "Germany" ,25);
INSERT INTO car_details values(10, "SX4", "Maruti" , "Japan" ,6.7);
/**select * from car_details;                                              
1|Beat|Cheverolet|USA|4                                                         
2|Swift|Maruti|Japan|6                                                          
3|Escort|Ford|USA|4.2                                                           
4|Sunny|Nissan|Japan|8                                                          
5|Beetle|Volkswagen|Germany|21                                                  
6|Etios|Toyota|Japan|7.2                                                        
7|Sail|Cheverolet|USA|5                                                         
8|Aria|Tata|India|7                                                             
9|Passat|Volkswagen|Germany|25                                                  
10|SX4|Maruti|Japan|6.7   **/
SELECT DISTINCT company from car_details;
/**Cheverolet                                                                      
Maruti                                                                          
Ford                                                                            
Nissan                                                                          
Volkswagen                                                                      
Toyota                                                                          
Tata  **/
SELECT DISTINCT country from car_details;
/**USA                                                                             
Japan                                                                           
Germany                                                                         
India**/
SELECT * FROM car_details WHERE approxprice BETWEEN 4 AND 7;
/**1|Beat|Cheverolet|USA|4                                                         
2|Swift|Maruti|Japan|6                                                          
3|Escort|Ford|USA|4.2                                                           
7|Sail|Cheverolet|USA|5                                                         
8|Aria|Tata|India|7                                                             
10|SX4|Maruti|Japan|6.7 **/
SELECT name,company from car_details WHERE country="Japan" AND approxprice<=6;
/*Swift|Maruti */
SELECT name,company FROM car_details WHERE company="Nissan" OR approxprice>20;
/**Sunny|Nissan                                                                    
Beetle|Volkswagen                                                               
Passat|Volkswagen**/
SELECT name FROM car_details WHERE company IN("Maruti","Ford");
/**Swift                                                                           
Escort                                                                          
SX4 **/
ALTER table car_details ADD year int;
UPDATE car_details SET year=2010;
SELECT * FROM car_details;
/**1|Beat|Cheverolet|USA|4|2010                                                    
2|Swift|Maruti|Japan|6|2010                                                     
3|Escort|Ford|USA|4.2|2010                                                      
4|Sunny|Nissan|Japan|8|2010                                                     
5|Beetle|Volkswagen|Germany|21|2010                                             
6|Etios|Toyota|Japan|7.2|2010                                                   
7|Sail|Cheverolet|USA|5|2010                                                    
8|Aria|Tata|India|7|2010                                                        
9|Passat|Volkswagen|Germany|25|2010                                             
10|SX4|Maruti|Japan|6.7|2010 **/
SELECT name AS car_name from car_details;
/**Beat                                                                            
Swift                                                                           
Escort                                                                          
Sunny                                                                           
Beetle                                                                          
Etios                                                                           
Sail                                                                            
Aria                                                                            
Passat                                                                          
SX4   **/
ALTER TABLE car_details RENAME column name to car_name;
SELECT * from car_details;
/**1|Beat|Cheverolet|USA|4|2010                                                    
2|Swift|Maruti|Japan|6|2010                                                     
3|Escort|Ford|USA|4.2|2010                                                      
4|Sunny|Nissan|Japan|8|2010                                                     
5|Beetle|Volkswagen|Germany|21|2010                                             
6|Etios|Toyota|Japan|7.2|2010                                                   
7|Sail|Cheverolet|USA|5|2010                                                    
8|Aria|Tata|India|7|2010                                                        
9|Passat|Volkswagen|Germany|25|2010                                             
10|SX4|Maruti|Japan|6.7|2010**/