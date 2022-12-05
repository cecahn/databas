SHOW TABLES;

CREATE TABLE Review(
Review_ID int NOT NULL,
Star_rating int,
Longer_review nvarchar(255),
Product_ID int,
PRIMARY KEY (Review_ID)
);

CREATE TABLE Product(
Product_ID int NOT NULL,
Department_ID int NOT NULL,
Title VARCHAR(255),
Product_desc nvarchar(255),
Stock_quantity int,
Price int,
Average_rating int,
Related_product_ID int,
PRIMARY KEY (Product_ID)
);

CREATE TABLE Department(
Dep_ID int NOT NULL,
Parent_ID int NOT NULL,
Title nvarchar(255),
Desc_of_dep nvarchar(255),
PRIMARY KEY (Dep_ID)
);

CREATE TABLE Ord(
Order_ID int NOT NULL,
Order_date int,
Order_status nvarchar(255),
Tracking_number int,
Payment_ref nvarchar(255),
Date_last_changed int,
Ordered_product_id int,
PRIMARY KEY (Order_ID)
);