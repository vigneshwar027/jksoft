from unittest import result
import pyodbc
import pandas as pd

conn = pyodbc.connect('Driver={ODBC Driver 17 for SQL Server};'
                      'Server=DESKTOP-GLMUIDH\SQLEXPRESS;'
                      'Database=KILP_FINAL;'
                      'Trusted_Connection=yes;')

cursor = conn.cursor()


# print(date_fields)


df = pd.read_sql('select * from dbo.Beneficiary', conn)
df2 = pd.read_sql('select * from dbo.Case', conn)

df.to_excel('exxfw.xlsx',sheet_name = 'beneficiary ',index = False)
df2.to_excel('exxfw.xlsx',sheet_name = 'case ',index = False)