    import pandas as pp

df1 = pp.read_excel('new.xlsx',sheet_name=0,)
df2 = pp.read_excel('new.xlsx',sheet_name=1)
print(df1.head())
# x= pp.concat([df1.head(),df2.tail()])
# print(x)
df1['Total'] = df1['BIO'] +df1['ENG'] +df1['TAMIL']
df1['percentage'] = df1['Total']/6
sorted = df1.sort_values(['TAMIL'], ascending=True)
print(sorted.head(3))
print(sorted.describe())
print(df1['TAMIL'].mean())
print(len(df1))
print(df1.columns)
print(df1.shape)
print(df1.shape[0])
print(df1.shape[1])
print(df1[0:5])
print(df1['TAMIL'][0:5])
print(df1['TAMIL'][2:4])


