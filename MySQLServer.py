import mysql.connector
from mysql.connector import Error

try: 
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="******"
    )
    if connection.is_connected():
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except Error:
    print(f"except mysql.connector.Error")

finally:
    try:
     if cursor:
          cursor.close()
     if connection.is_secure:
          connection.close()

    except:
        pass
