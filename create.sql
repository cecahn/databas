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
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('5', 'Science Book', 'Book of science', '4', '120', Null, 'Books');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('6', 'Magazine', 'News magazine', '4', '20', Null, 'Magazines');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('7', 'Headphones', 'Electronics', '4', '300', Null, 'Cables');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('8', 'Laptop', 'Computer', '4', '1500', Null, 'Computers');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('9', 'Newspaper', 'News', '7', '10', Null, 'Magazines');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('10', 'Phone', 'Talk', '8', '2000', Null, 'Phones');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('11', 'TV', 'Watch', '7', '3000', Null, 'Tvs');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('12', 'Electronic thootbrush', 'Brush', '7', '500', Null, 'Cables');
INSERT INTO Product (Product_ID, Product_desc, Stock_quantity, Price, Average_rating, Depart_ID) VALUES ('13', 'Cable', 'Long', '7', '200', Null, 'Cables');

--Review
INSERT INTO Review (Review_ID, Star_rating, Longer_review, Product_ID) VALUES ('1', '4', 'Good computer','8');
INSERT INTO Review (Review_ID, Star_rating, Longer_review, Product_ID) VALUES ('2', '2', 'Boring book','5');

--User
INSERT INTO User (SNN, Name, Email, Adress, Password, Phone_number, User_Agreement, Ordered_Product_ID, Review_ID) VALUES ('1234', 'Cissi', 'cissi@mail.com', 'Uppsala', 'hej', '123456', '1', '8', '1');
INSERT INTO User (SNN, Name, Email, Adress, Password, Phone_number, User_Agreement, Ordered_Product_ID, Review_ID) VALUES ('5678', 'Sofia', 'sofia@mail.com', 'Stockholm', 'hej', '789101', '1', '5', '2');

--Featured products
INSERT INTO Featured_dep (Title, Short_desc, Dep_ID) VALUES ('Electronics', 'All kinds of electronics!','Electronics');
INSERT INTO Featured_dep (Title, Short_desc, Dep_ID) VALUES ('Books', 'Lots of good books','Books');

--Featured products
INSERT INTO Featured_prod (Title, Description, CurrentPrice, Featured_Prod_ID) VALUES ('Laptop', 'Computer','1500','8');
INSERT INTO Featured_prod (Title, Description, CurrentPrice, Featured_Prod_ID) VALUES ('Science Book', 'Book of science', '20','5');
