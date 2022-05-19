import pandas as pp

df = pp.read_excel('Master LCA Data File - Copy.xlsx')
# print(df.columns)
extract = (df['LCA Case Number'])

extract.to_excel('nnn.xlsx')    