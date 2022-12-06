CREATE TABLE User(
SSN int ,
Name VARCHAR(255),
Email VARCHAR(255),
Adress VARCHAR(255),
Password VARCHAR(255),
Phone_number int,
User_Agreement bool,
Ordered_Product_ID int,
Review_ID int,
PRIMARY KEY (SSN)
);

CREATE TABLE Review(
Review_ID int NOT NULL,
Star_rating int,
Longer_review VARCHAR(255),
Product_ID int,
PRIMARY KEY (Review_ID)
);

CREATE TABLE Product(
Product_ID int NOT NULL,
Title VARCHAR(255),
Product_desc VARCHAR(255),
Stock_quantity int,
Price int,
Average_rating int,
Depart_ID VARCHAR(255)
PRIMARY KEY (Product_ID)
FOREIGN KEY (Depart_ID) REFERENCES Department(Title)
);

CREATE TABLE Department(
Dep_ID VARCHAR(255),
Title VARCHAR(255),
Desc_of_dep VARCHAR(255),
PRIMARY KEY (Title),
FOREIGN KEY (Dep_ID) REFERENCES Department(Title)
);

CREATE TABLE Order(
Order_ID int NOT NULL,
Order_date int,
Order_status VARCHAR(255),
Tracking_number int,
Payment_ref VARCHAR(255),
Date_last_changed int,
Ordered_product_id int,
PRIMARY KEY (Order_ID),
FOREIGN KEY (Ordered_product_id) REFERENCES Product(Product_ID)
);