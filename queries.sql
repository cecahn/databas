
--Welcome text for homepage
SELECT Desc_of_dep FROM Department WHERE Title = Homepage; 

-- Top level departments and their desc
SELECT Title, Desc_of_dep FROM Department WHERE Dep_ID = NULL;

--List of featured products
SELECT Title, Description, CurrentPrice FROM Featured_prod;

-- Products related with keyword
SELECT Title, Description, CurrentPrice FROM 

-- Not top level, x is department, fix Current price
SELECT Title, Product_desc, Price, Average_rating, Discount FROM Product where Depart_ID = x;

--- Discount product
SELECT Title, Price, Discount FROM Product WHERE Discount IS NOT NULL ORDER BY id ASC;

