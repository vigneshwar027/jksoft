import pyodbc

conn = pyodbc.connect('Driver={ODBC Driver 17 for SQL Server};'
                      'Server=localhost;'
                      'Database=KILP;'
                      'Trusted_Connection=yes;')

cursor = conn.cursor()

cursor.execute("""truncate Table
        [KILP].[dbo].[Case];
        truncate Table
        [KILP].[dbo].[Beneficiary];
        truncate table 
        [KILP].[dbo].[BeneficiaryPriorityDate];
        truncate table 
        [KILP].[dbo].[BeneficiaryEmployment];
        truncate Table
        [KILP].[dbo].[Petitioner];
        truncate table 
        [KILP].[dbo].[BeneficiaryEmployment];
        truncate Table
        [KILP].[dbo].[Organization];
        """)
cursor.commit()


