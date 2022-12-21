import mysql.connector

group_number="45" #FILL IN YOUR GROUP NUMBER

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="ht22_2_group_"+group_number,
  passwd="pwd_"+group_number,
  database="ht22_2_project_group_"+group_number
)

mycursor = mydb.cursor()

user_input = input("Select a product ID  ")

print_user_input =("SELECT Discount FROM Product WHERE Product_ID = {}".format ( int(user_input)))
mycursor.execute(print_user_input)
# fetch all the matching rows 
  
# loop through the rows
for row in mycursor:
    print(row)
    print("\n")
    
new_discount = input("What is the new discount  ")

change_discount = ("UPDATE Product SET Discount = {}".format(float(new_discount)))
mycursor.execute(change_discount)

print_product =("SELECT Title, floor(Price*Discount) FROM Product WHERE Product_ID = {}".format ( int(user_input)))

mycursor.execute(print_product)

print("New price for product")
for product in mycursor:
    print(product)
  

    
mydb.close()