import mysql.connector

group_number="45" #FILL IN YOUR GROUP NUMBER

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="ht22_2_group_"+group_number,
  passwd="pwd_"+group_number,
  database="ht22_2_project_group_"+group_number
)

mycursor = mydb.cursor()
#Welcome text for homepage
Welcome = ("SELECT Desc_of_dep FROM Department WHERE Title = 'Homepage'") 

mycursor.execute(Welcome)

for welcome in mycursor:
  print(welcome)
  
#mycursor.execute("SHOW TABLES")
#for table_name in mycursor:
#   print(table_name)

mycursor.execute(top_level)
# fetch all the matching rows 
result = mycursor.fetchall()
  
# loop through the rows
for row in result:
    print(row)
    print("\n")
    
   
user_input = input("Select department  ")

if user_input=='Homepage':
  print_user_input =("SELECT Dep_ID, Title FROM Department WHERE Dep_ID = '{}'".format (user_input))
else:
  print_user_input =("SELECT Product_ID, Title, floor(Price* Discount) FROM Product WHERE Depart_ID = '{}'".format (user_input))

mycursor.execute(print_user_input)
# fetch all the matching rows 
result = mycursor.fetchall()
  
# loop through the rows
for row in result:
    print(row)
    print("\n")


mydb.close()