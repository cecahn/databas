import mysql.connector
import pandas as pd
import pymysql
import logging
import sshtunnel
from sshtunnel import SSHTunnelForwarder

ssh_hostname = 'beurling.it.uu.se:22'
ssh_username = 'soal1262'
ssh_password = 
database_username = 'ht22_2_group_45'
database_password = 'slayqueens'
database_name = 'ecommerce'
localhost = 'groucho.it.uu.se'

def open_ssh_tunnel(verbose=False):
    """Open an SSH tunnel and connect using a username and password.
    
    :param verbose: Set to True to show logging
    :return tunnel: Global SSH tunnel connection
    """
    
    if verbose:
        sshtunnel.DEFAULT_LOGLEVEL = logging.DEBUG
    
    global tunnel
    tunnel = SSHTunnelForwarder(
        (ssh_hostname, 22),
        ssh_username = ssh_username,
        ssh_password = ssh_password,
        remote_bind_address = ('127.0.0.1', 3306)
    )
    
    tunnel.start()
    
def mysql_connect():
    """Connect to a MySQL server using the SSH tunnel connection
    
    :return connection: Global MySQL database connection
    """
    
    global connection
    
    connection = pymysql.connect(
        host='127.0.0.1',
        user=database_username,
        passwd=database_password,
        db=database_name,
        port=tunnel.local_bind_port
    )
    
def run_query(sql):
    """Runs a given SQL query via the global database connection.
    
    :param sql: MySQL query
    :return: Pandas dataframe containing results
    """
    
    return pd.read_sql_query(sql, connection)

# Connecta till databasen
mydb = mysql.connector.connect(
  host="groucho.it.uu.se",
  user="ht22_2_group_45",
  password="slayqueens",
  database="ht22_2_group_45"
)

print(mydb)

mycursor = mydb.cursor()




##Queries to make tables
#Funktioner för att skapa ett department, child department, produkt, user, ?

########CREATE PRODUCT
#Namn, produkt id, description, stock quantity, price, avg rating, related product ID
#def create_product():


#mycursor.execute('''
#		CREATE TABLE products (
#			product_id int primary key,
#			product_name nvarchar(50),
#     product_description nvarchar(255),
#     stock int,
#			price int,
#     avg_rating int,
#     related_prod array
#			)
#               ''')


def mysql_disconnect():
    """Closes the MySQL database connection.
    """
    
    connection.close()
    
    
mycursor.execute('''
CREATE TABLE User(
SSN int ,
Name nvarchar(255),
Email nvarchar(255),
Adress nvarchar(255),
Password nvarchar(255),
Phone_number int,
User_Agreement bool,
Ordered_Product_ID int,
Review_ID int,
PRIMARY KEY (SSN)
);
''')

mycursor.execute('''
CREATE TABLE Review(
Review_ID int NOT NULL,
Star_rating int,
Longer_review nvarchar(255),
Product_ID int,
PRIMARY KEY (Review_ID)
);

''')
mycursor.execute('''

CREATE TABLE Product(
Product_ID int NOT NULL,
Title VARCHAR(255),
Product_desc nvarchar(255),
Stock_quantity int,
Price int,
Average_rating int,
Related_product_ID int,
PRIMARY KEY (Product_ID)
);

''')

mycursor.execute('''

CREATE TABLE Department(
Dep_ID int NOT NULL,
Title nvarchar(255),
Desc_of_dep nvarchar(255),
Product_ID array,
Child_dep_ID array,
PRIMARY KEY (Dep_ID)
);
''')

mycursor.execute( '''
    CREATE TABLE Order(
Order_ID int NOT NULL,
Order_date int,
Order_status nvarchar(255),
Tracking_number int,
Payment_ref nvarchar(255),
Date_last_changed int,
Ordered_product_id int,
PRIMARY KEY (Order_ID)
);
''')

def insert_topdep(depar_id, deptitle, desc): #dep id borde väljas utifrån vad som finns redan
    sql = "INSERT INTO Department (Dep_ID, Title, Desc_of_dep, Product_ID, Child_dep_ID ) VALUES (%s, %s, %s, %s, %s)"
    val = [depar_id, deptitle, desc, None, None]
    mycursor.execute(sql, val)
    
def insert_a_product(product_id, title, desc, quantity, price):
    sql = " INSERT INTO  Product (Product_ID, Title, Product_Desc, Stock_quantity, Price) VALUES(%s, %s, %s, %s, %s)"
    val = [product_id, title, desc, quantity, price]
    mycursor.execute(sql,val)

def insert_child_dep(top_depar_id, child_dep_id, dep_title, desc):
    sql = 

    #