import mysql.connector 



conn = mysql.connector.connect(

	host='localhost',	user='root',
	password=''

	)


cursorObject = conn.cursor()

cursorObject.execute('CREATE DATABASE tracer')

print("ALL DONE!!!")

