import pyodbc

conn = pyodbc.connect('Driver={ODBC Driver 17 for SQL Server};'
                      'Server=localhost\SQLEXPRESS;'
                      'Database=practice;'
                      'Trusted_Connection=yes;')

cursor = conn.cursor()

data = cursor.execute('''
            select * from employee
''').fetchall()


conn.close()