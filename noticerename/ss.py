# from distutils.filelist import findall
# import re

# a = """U.S. Citizenship and Immigration Services Texas Service Center 6046 N Belt Line RD STE 172 Irving, TX 
# 75038-0015 April 8, 2022 JUSTIN COFFEY CONSTANGY BROOKS SMITH AND PRO PO BOX 98869 RALEIGH, NC 27624 U.S. Citizenship and Immigration Services HOMELA SECURISE RE: PETER MARK HALPIN 1-131, Application for 
# Travel Document Combination Employment Authorization and Advance Parole Request SRC2190179014 A219422842 DECISION"""


# print(a.split(',')[-2].split(' ')[-1])


from re import A


a = '''
        U.S. Citizenship and Immigration Services California Service Center Laguna Niguel, CA 92677-0590 ఆ Chone U.S. Citizenship and Immigration Services OMETRE SIX CONTINENTS HOTELS INC INTERCON c/o JUSTIN COFFEY CONSTANGY BROOKS SMITH & PROPHETE PO BOX 98869 RALEIGH, NC 27624 WAC2214850889 . Form I-129, Petition for a Nonimmigrant Worker a REQUEST FOR EVIDENCE'''


if not 'I-129' and '1 129' and '1-129' and 'I-129,'  in a:

    print('not available')

else:
    print('available')