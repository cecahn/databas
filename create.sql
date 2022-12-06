--DEPARTMENT
--Insert queries Område (Null for head, child is numb, Titel, DEsc)) Values Vad argumenten ska ha
INSERT INTO Department (Dep_ID, Title, Desc_of_dep) VALUES (Null, 'Homepage', 'Welcome to this website! Please buy things!!');
INSERT INTO Department (Dep_ID, Title, Desc_of_dep) VALUES (Null, 'Electronics', 'Electric mamas');
INSERT INTO Department (Dep_ID, Title, Desc_of_dep) VALUES (Null, 'Books', 'read more');

-- Electronics child departments
INSERT INTO Department (Dep_ID, Title, Desc_of_dep) VALUES ('Electronics', 'Cables', 'Very beautiful cables');
INSERT INTO Department (Dep_ID, Title, Desc_of_dep) VALUES ('Electronics', 'Computers', 'All kinds of computers');
INSERT INTO Department (Dep_ID, Title, Desc_of_dep) VALUES ('Electronics', 'Phones', 'Very beautiful phones');
INSERT INTO Department (Dep_ID, Title, Desc_of_dep) VALUES ('Electronics', 'Tvs', 'Very beautiful tvs');

-- Books child departments 
INSERT INTO Department (Dep_ID, Title, Desc_of_dep) VALUES ('Books', 'Romance', 'Romantic');
INSERT INTO Department (Dep_ID, Title, Desc_of_dep) VALUES ('Books', 'Magazines', 'Good magazines');
INSERT INTO Department (Dep_ID, Title, Desc_of_dep) VALUES ('Books', 'Horror', 'Scary');

-- Products
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('5', 'bok', 'books', '4', Null, Null, 'Books');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('6', 'magazine', 'news', '4', Null, Null, 'Magazines');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('7', 'headphones', 'electronics', '4', Null, Null, 'Cables');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('8', 'Laptop', 'Computer', '4', Null, Null, 'Computers');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('9', 'Newspaper', 'News', '7', '10', Null, 'Magazines');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('10', 'Phone', 'Talk', '8', '2000', Null, 'Phones');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('11', 'TV', 'Watch', '7', '3000', Null, 'Tvs');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('12', 'Electronic thootbrush', 'Brush', '7', '500', Null, 'Cables');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('13', 'Cable', 'Long', '7', '200', Null, 'Cables');

--Review
INSERT INTO Review (Review_ID, Star_rating, Longer_review, Product_ID) VALUES ('1', '4', 'fin','4');
INSERT INTO Review (Review_ID, Star_rating, Longer_review, Product_ID) VALUES ('2', '2', 'ful','5');

--User
INSERT INTO User (SNN, Name, Email, Adress, Password, Phone_number, User_Agreement, Ordered_Product_ID, Review_ID) VALUES ('4', 'Cissi', 'c', 'Uppsala', 'hej', '23', '1', '4', '1');
INSERT INTO User (SNN, Name, Email, Adress, Password, Phone_number, User_Agreement, Ordered_Product_ID, Review_ID) VALUES ('5', 'Sofia', 'c', 'Uppsala', 'hej', '23', '1', '5', '2');

