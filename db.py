import mysql.connector

# Connecta till databasen
mydb = mysql.connector.connect(
  host="groucho.it.uu.se",
  user="ht22_2_group_45",
  password="slayqueens",
  database="ht22_2_group_45"
)

print(mydb)

# # mycursor = mydb.cursor()




##Queries to make tables
#Funktioner för att skapa ett department, child department, produkt, user, ?

########CREATE PRODUCT
#Namn, produkt id, description, stock quantity, price, avg rating, related product ID
#def create_product():
    