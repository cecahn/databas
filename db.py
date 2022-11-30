import mysql.connector
import pandas as pd
import pymysql
import logging
import sshtunnel
from sshtunnel import SSHTunnelForwarder

ssh_hostname = 'beurling.it.uu.se:22'
ssh_username = 'soal1262'
ssh_password = 'hejHejhej22'
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

# mycursor = mydb.cursor()




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